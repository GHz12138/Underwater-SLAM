;; Auto-generated. Do not edit!


(when (boundp 'imagenex831l::RawRange)
  (if (not (find-package "IMAGENEX831L"))
    (make-package "IMAGENEX831L"))
  (shadow 'RawRange (find-package "IMAGENEX831L")))
(unless (find-package "IMAGENEX831L::RAWRANGE")
  (make-package "IMAGENEX831L::RAWRANGE"))

(in-package "ROS")
;;//! \htmlinclude RawRange.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imagenex831l::RawRange
  :super ros::object
  :slots (_header _data ))

(defmethod imagenex831l::RawRange
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get imagenex831l::RawRange :md5sum-) "8903b686ebe5db3477e83c6d0bb149f8")
(setf (get imagenex831l::RawRange :datatype-) "imagenex831l/RawRange")
(setf (get imagenex831l::RawRange :definition-)
      "# Raw data from sonar.
std_msgs/Header header
uint8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :imagenex831l/RawRange "8903b686ebe5db3477e83c6d0bb149f8")


