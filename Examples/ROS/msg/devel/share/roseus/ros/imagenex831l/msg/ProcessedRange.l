;; Auto-generated. Do not edit!


(when (boundp 'imagenex831l::ProcessedRange)
  (if (not (find-package "IMAGENEX831L"))
    (make-package "IMAGENEX831L"))
  (shadow 'ProcessedRange (find-package "IMAGENEX831L")))
(unless (find-package "IMAGENEX831L::PROCESSEDRANGE")
  (make-package "IMAGENEX831L::PROCESSEDRANGE"))

(in-package "ROS")
;;//! \htmlinclude ProcessedRange.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imagenex831l::ProcessedRange
  :super ros::object
  :slots (_header _intensity _range_error _frequency_error _internal_error _switches_accepted _head_position _step_direction _max_range _profile_range _roll_angle _pitch_angle _roll_acceleration _pitch_acceleration ))

(defmethod imagenex831l::ProcessedRange
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:intensity __intensity) (make-array 0 :initial-element 0 :element-type :char))
    ((:range_error __range_error) nil)
    ((:frequency_error __frequency_error) nil)
    ((:internal_error __internal_error) nil)
    ((:switches_accepted __switches_accepted) nil)
    ((:head_position __head_position) 0.0)
    ((:step_direction __step_direction) nil)
    ((:max_range __max_range) 0.0)
    ((:profile_range __profile_range) 0)
    ((:roll_angle __roll_angle) 0.0)
    ((:pitch_angle __pitch_angle) 0.0)
    ((:roll_acceleration __roll_acceleration) 0.0)
    ((:pitch_acceleration __pitch_acceleration) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _intensity __intensity)
   (setq _range_error __range_error)
   (setq _frequency_error __frequency_error)
   (setq _internal_error __internal_error)
   (setq _switches_accepted __switches_accepted)
   (setq _head_position (float __head_position))
   (setq _step_direction __step_direction)
   (setq _max_range (float __max_range))
   (setq _profile_range (round __profile_range))
   (setq _roll_angle (float __roll_angle))
   (setq _pitch_angle (float __pitch_angle))
   (setq _roll_acceleration (float __roll_acceleration))
   (setq _pitch_acceleration (float __pitch_acceleration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:range_error
   (&optional (__range_error :null))
   (if (not (eq __range_error :null)) (setq _range_error __range_error)) _range_error)
  (:frequency_error
   (&optional (__frequency_error :null))
   (if (not (eq __frequency_error :null)) (setq _frequency_error __frequency_error)) _frequency_error)
  (:internal_error
   (&optional (__internal_error :null))
   (if (not (eq __internal_error :null)) (setq _internal_error __internal_error)) _internal_error)
  (:switches_accepted
   (&optional (__switches_accepted :null))
   (if (not (eq __switches_accepted :null)) (setq _switches_accepted __switches_accepted)) _switches_accepted)
  (:head_position
   (&optional __head_position)
   (if __head_position (setq _head_position __head_position)) _head_position)
  (:step_direction
   (&optional (__step_direction :null))
   (if (not (eq __step_direction :null)) (setq _step_direction __step_direction)) _step_direction)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:profile_range
   (&optional __profile_range)
   (if __profile_range (setq _profile_range __profile_range)) _profile_range)
  (:roll_angle
   (&optional __roll_angle)
   (if __roll_angle (setq _roll_angle __roll_angle)) _roll_angle)
  (:pitch_angle
   (&optional __pitch_angle)
   (if __pitch_angle (setq _pitch_angle __pitch_angle)) _pitch_angle)
  (:roll_acceleration
   (&optional __roll_acceleration)
   (if __roll_acceleration (setq _roll_acceleration __roll_acceleration)) _roll_acceleration)
  (:pitch_acceleration
   (&optional __pitch_acceleration)
   (if __pitch_acceleration (setq _pitch_acceleration __pitch_acceleration)) _pitch_acceleration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _intensity
    (* 1    (length _intensity)) 4
    ;; bool _range_error
    1
    ;; bool _frequency_error
    1
    ;; bool _internal_error
    1
    ;; bool _switches_accepted
    1
    ;; float32 _head_position
    4
    ;; bool _step_direction
    1
    ;; float32 _max_range
    4
    ;; uint16 _profile_range
    2
    ;; float32 _roll_angle
    4
    ;; float32 _pitch_angle
    4
    ;; float32 _roll_acceleration
    4
    ;; float32 _pitch_acceleration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _intensity
     (write-long (length _intensity) s)
     (princ _intensity s)
     ;; bool _range_error
       (if _range_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _frequency_error
       (if _frequency_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _internal_error
       (if _internal_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _switches_accepted
       (if _switches_accepted (write-byte -1 s) (write-byte 0 s))
     ;; float32 _head_position
       (sys::poke _head_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _step_direction
       (if _step_direction (write-byte -1 s) (write-byte 0 s))
     ;; float32 _max_range
       (sys::poke _max_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _profile_range
       (write-word _profile_range s)
     ;; float32 _roll_angle
       (sys::poke _roll_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_angle
       (sys::poke _pitch_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_acceleration
       (sys::poke _roll_acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_acceleration
       (sys::poke _pitch_acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _intensity
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _intensity (make-array n :element-type :char))
     (replace _intensity buf :start2 ptr-) (incf ptr- n))
   ;; bool _range_error
     (setq _range_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _frequency_error
     (setq _frequency_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _internal_error
     (setq _internal_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _switches_accepted
     (setq _switches_accepted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _head_position
     (setq _head_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _step_direction
     (setq _step_direction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _max_range
     (setq _max_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _profile_range
     (setq _profile_range (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _roll_angle
     (setq _roll_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_angle
     (setq _pitch_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_acceleration
     (setq _roll_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_acceleration
     (setq _pitch_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get imagenex831l::ProcessedRange :md5sum-) "e5edca712f3e169a5e30eb8cfb395c75")
(setf (get imagenex831l::ProcessedRange :datatype-) "imagenex831l/ProcessedRange")
(setf (get imagenex831l::ProcessedRange :definition-)
      "# Processed echo data from sonar.
std_msgs/Header header
uint8[] intensity # intensity.

bool range_error
bool frequency_error
bool internal_error
bool switches_accepted

float32 head_position
bool step_direction # 0 ccw, 1 cw.
float32 max_range
uint16 profile_range

float32 roll_angle
float32 pitch_angle
float32 roll_acceleration
float32 pitch_acceleration


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



(provide :imagenex831l/ProcessedRange "e5edca712f3e169a5e30eb8cfb395c75")


