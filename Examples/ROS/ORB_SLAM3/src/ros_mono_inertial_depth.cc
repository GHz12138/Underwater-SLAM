/**
 * This file is part of ORB-SLAM3
 *
 * Copyright (C) 2017-2021 Carlos Campos, Richard Elvira, Juan J. Gómez Rodríguez, José M.M. Montiel and Juan D. Tardós, University of Zaragoza.
 * Copyright (C) 2014-2016 Raúl Mur-Artal, José M.M. Montiel and Juan D. Tardós, University of Zaragoza.
 *
 * ORB-SLAM3 is free software: you can redistribute it and/or modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * ORB-SLAM3 is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even
 * the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with ORB-SLAM3.
 * If not, see <http://www.gnu.org/licenses/>.
 */

#include <iostream>
#include <algorithm>
#include <fstream>
#include <chrono>
#include <vector>
#include <queue>
#include <thread>
#include <mutex>

#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Imu.h>
#include <sensor_msgs/FluidPressure.h>
#include <opencv2/core/core.hpp>

#include "../../../include/System.h"
#include "../include/ImuTypes.h"

using namespace std;

class DepthGrabber
{
public:
  DepthGrabber() {};
  void GrabDepth(const sensor_msgs::FluidPressureConstPtr &depth_msg);

  queue<sensor_msgs::FluidPressureConstPtr> pressureBuf;
  std::mutex mBufMutex;
};

class ImuGrabber
{
public:
  ImuGrabber() {};
  void GrabImu(const sensor_msgs::ImuConstPtr &imu_msg);

  queue<sensor_msgs::ImuConstPtr> imuBuf;
  std::mutex mBufMutex;
};

class ImageGrabber
{
public:
  ImageGrabber(ORB_SLAM3::System *pSLAM, ImuGrabber *pImuGb, DepthGrabber *pdepthgb, const bool bClahe) : mpSLAM(pSLAM), mpImuGb(pImuGb), mpDepthGb(pdepthgb), mbClahe(bClahe) {}

  void GrabImage(const sensor_msgs::ImageConstPtr &msg);
  cv::Mat GetImage(const sensor_msgs::ImageConstPtr &img_msg);
  void SyncWithImu();

  queue<sensor_msgs::ImageConstPtr> img0Buf;
  std::mutex mBufMutex;

  ORB_SLAM3::System *mpSLAM;
  ImuGrabber *mpImuGb;
  DepthGrabber *mpDepthGb;

  const bool mbClahe;
  cv::Ptr<cv::CLAHE> mClahe = cv::createCLAHE(3.0, cv::Size(8, 8));
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "Mono_Inertial_Depth");
  ros::NodeHandle n("~");
  ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Info);
  bool bEqual = false;
  if (argc < 3 || argc > 4)
  {
    cerr << endl
         << "Usage: rosrun ORB_SLAM3 Mono_Inertial_Depth path_to_vocabulary path_to_settings [do_equalize]" << endl;
    ros::shutdown();
    return 1;
  }

  if (argc == 4)
  {
    std::string sbEqual(argv[3]);
    if (sbEqual == "true")
      bEqual = true;
  }

  // Create SLAM system. It initializes all system threads and gets ready to process frames.
  ORB_SLAM3::System SLAM(argv[1], argv[2], ORB_SLAM3::System::IMU_MONOCULAR_DEPTH, true);

  ImuGrabber imugb;
  DepthGrabber depthgb;
  ImageGrabber igb(&SLAM, &imugb, &depthgb, bEqual); // TODO

  // Maximum delay, 5 seconds
  ros::Subscriber sub_imu = n.subscribe("/imu", 1000, &ImuGrabber::GrabImu, &imugb);
  ros::Subscriber sub_img0 = n.subscribe("/camera/image_raw", 100, &ImageGrabber::GrabImage, &igb);
  ros::Subscriber sub_press = n.subscribe("/barometer_node/depth", 100, &DepthGrabber::GrabDepth, &depthgb);

  std::thread sync_thread(&ImageGrabber::SyncWithImu, &igb);

  ros::spin();
  // Stop all threads
  SLAM.Shutdown();
  // Save camera trajectory
  SLAM.SaveKeyFrameTrajectoryTUM("ORB-SLAM3-KeyFrameTrajectory.txt");
  // Save camera trajectory
  SLAM.SaveTrajectoryTUM("ORB-SLAM3-FrameTrajectory.txt");
  // int initIdx = 0;
  // SLAM.SaveDebugData(initIdx);
  return 0;
}

void ImageGrabber::GrabImage(const sensor_msgs::ImageConstPtr &img_msg)
{
  mBufMutex.lock();
  if (!img0Buf.empty())
    img0Buf.pop();
  img0Buf.push(img_msg);
  mBufMutex.unlock();
}

cv::Mat ImageGrabber::GetImage(const sensor_msgs::ImageConstPtr &img_msg)
{
  // Copy the ros image message to cv::Mat.
  cv_bridge::CvImageConstPtr cv_ptr;
  try
  {
    cv_ptr = cv_bridge::toCvShare(img_msg, sensor_msgs::image_encodings::MONO8);
  }
  catch (cv_bridge::Exception &e)
  {
    ROS_ERROR("cv_bridge exception: %s", e.what());
  }

  if (cv_ptr->image.type() == 0)
  {
    return cv_ptr->image.clone();
  }
  else
  {
    std::cout << "Error type" << std::endl;
    return cv_ptr->image.clone();
  }
}

void ImageGrabber::SyncWithImu()
{
  while (1)
  {
    cv::Mat im;
    double tIm = 0;
    if (!img0Buf.empty() && !mpImuGb->imuBuf.empty())
    {
      tIm = img0Buf.front()->header.stamp.toSec();
      if (tIm > mpImuGb->imuBuf.back()->header.stamp.toSec())
        continue;
      {
        this->mBufMutex.lock();
        im = GetImage(img0Buf.front());
        img0Buf.pop();
        this->mBufMutex.unlock();
      }

      vector<ORB_SLAM3::IMU::Point> vImuMeas;
      mpImuGb->mBufMutex.lock();
      if (!mpImuGb->imuBuf.empty())
      {
        // Load imu measurements from buffer
        vImuMeas.clear();
        // 获取当前图像与前一张图像之间的IMU数据
        while (!mpImuGb->imuBuf.empty() && mpImuGb->imuBuf.front()->header.stamp.toSec() <= tIm)
        {
          double t = mpImuGb->imuBuf.front()->header.stamp.toSec();
          cv::Point3f acc(mpImuGb->imuBuf.front()->linear_acceleration.x, mpImuGb->imuBuf.front()->linear_acceleration.y, mpImuGb->imuBuf.front()->linear_acceleration.z);
          cv::Point3f gyr(mpImuGb->imuBuf.front()->angular_velocity.x, mpImuGb->imuBuf.front()->angular_velocity.y, mpImuGb->imuBuf.front()->angular_velocity.z);
          vImuMeas.push_back(ORB_SLAM3::IMU::Point(acc, gyr, t));
          mpImuGb->imuBuf.pop();
        }
      }
      mpImuGb->mBufMutex.unlock();

      
      vector<ORB_SLAM3::Pressure::DepthData> vPressureMeas;
      mpDepthGb->mBufMutex.lock();
      if (!mpDepthGb->pressureBuf.empty())
      {
        // Load depth measurements from buffer
        vPressureMeas.clear();
        // 获取当前图像与前一张图像之间的压力计数据
        while (!mpDepthGb->pressureBuf.empty() && mpDepthGb->pressureBuf.front()->header.stamp.toSec() <= tIm)
        {
          double t = mpDepthGb->pressureBuf.front()->header.stamp.toSec();
          float depth(mpDepthGb->pressureBuf.front()->fluid_pressure);

          vPressureMeas.push_back(ORB_SLAM3::Pressure::DepthData(t, depth));
          // if (!vPressureMeas.empty())
          // {
          //   std::cout << "Pressure measurements:" << std::endl;
          //   for (const auto &pressData : vPressureMeas)
          //   {
          //     std::cout << "Timestamp: " << pressData.timestamp
          //               << ", Depth: " << pressData.depth << std::endl;
          //   }
          // }
          // else
          // {
          //   std::cout << "vPressureMeas is empty." << std::endl;
          // }
          mpDepthGb->pressureBuf.pop();
        }
      }
      mpDepthGb->mBufMutex.unlock();
      if (mbClahe)
        mClahe->apply(im, im);

      mpSLAM->TrackMonocular(im, tIm, vImuMeas, vPressureMeas);
    }

    std::chrono::milliseconds tSleep(1);
    std::this_thread::sleep_for(tSleep);
  }
}

void ImuGrabber::GrabImu(const sensor_msgs::ImuConstPtr &imu_msg)
{
  mBufMutex.lock();
  imuBuf.push(imu_msg);
  mBufMutex.unlock();
  return;
}

void DepthGrabber::GrabDepth(const sensor_msgs::FluidPressureConstPtr &depth_msg)
{
  mBufMutex.lock();
  pressureBuf.push(depth_msg);
  // std::cout << "depth_msg=" << depth_msg->fluid_pressure << std::endl;
  mBufMutex.unlock();
  return;
}