; Auto-generated. Do not edit!


(cl:in-package imagenex831l-msg)


;//! \htmlinclude ProcessedRange.msg.html

(cl:defclass <ProcessedRange> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (intensity
    :reader intensity
    :initarg :intensity
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (range_error
    :reader range_error
    :initarg :range_error
    :type cl:boolean
    :initform cl:nil)
   (frequency_error
    :reader frequency_error
    :initarg :frequency_error
    :type cl:boolean
    :initform cl:nil)
   (internal_error
    :reader internal_error
    :initarg :internal_error
    :type cl:boolean
    :initform cl:nil)
   (switches_accepted
    :reader switches_accepted
    :initarg :switches_accepted
    :type cl:boolean
    :initform cl:nil)
   (head_position
    :reader head_position
    :initarg :head_position
    :type cl:float
    :initform 0.0)
   (step_direction
    :reader step_direction
    :initarg :step_direction
    :type cl:boolean
    :initform cl:nil)
   (max_range
    :reader max_range
    :initarg :max_range
    :type cl:float
    :initform 0.0)
   (profile_range
    :reader profile_range
    :initarg :profile_range
    :type cl:fixnum
    :initform 0)
   (roll_angle
    :reader roll_angle
    :initarg :roll_angle
    :type cl:float
    :initform 0.0)
   (pitch_angle
    :reader pitch_angle
    :initarg :pitch_angle
    :type cl:float
    :initform 0.0)
   (roll_acceleration
    :reader roll_acceleration
    :initarg :roll_acceleration
    :type cl:float
    :initform 0.0)
   (pitch_acceleration
    :reader pitch_acceleration
    :initarg :pitch_acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass ProcessedRange (<ProcessedRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessedRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessedRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imagenex831l-msg:<ProcessedRange> is deprecated: use imagenex831l-msg:ProcessedRange instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:header-val is deprecated.  Use imagenex831l-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'intensity-val :lambda-list '(m))
(cl:defmethod intensity-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:intensity-val is deprecated.  Use imagenex831l-msg:intensity instead.")
  (intensity m))

(cl:ensure-generic-function 'range_error-val :lambda-list '(m))
(cl:defmethod range_error-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:range_error-val is deprecated.  Use imagenex831l-msg:range_error instead.")
  (range_error m))

(cl:ensure-generic-function 'frequency_error-val :lambda-list '(m))
(cl:defmethod frequency_error-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:frequency_error-val is deprecated.  Use imagenex831l-msg:frequency_error instead.")
  (frequency_error m))

(cl:ensure-generic-function 'internal_error-val :lambda-list '(m))
(cl:defmethod internal_error-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:internal_error-val is deprecated.  Use imagenex831l-msg:internal_error instead.")
  (internal_error m))

(cl:ensure-generic-function 'switches_accepted-val :lambda-list '(m))
(cl:defmethod switches_accepted-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:switches_accepted-val is deprecated.  Use imagenex831l-msg:switches_accepted instead.")
  (switches_accepted m))

(cl:ensure-generic-function 'head_position-val :lambda-list '(m))
(cl:defmethod head_position-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:head_position-val is deprecated.  Use imagenex831l-msg:head_position instead.")
  (head_position m))

(cl:ensure-generic-function 'step_direction-val :lambda-list '(m))
(cl:defmethod step_direction-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:step_direction-val is deprecated.  Use imagenex831l-msg:step_direction instead.")
  (step_direction m))

(cl:ensure-generic-function 'max_range-val :lambda-list '(m))
(cl:defmethod max_range-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:max_range-val is deprecated.  Use imagenex831l-msg:max_range instead.")
  (max_range m))

(cl:ensure-generic-function 'profile_range-val :lambda-list '(m))
(cl:defmethod profile_range-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:profile_range-val is deprecated.  Use imagenex831l-msg:profile_range instead.")
  (profile_range m))

(cl:ensure-generic-function 'roll_angle-val :lambda-list '(m))
(cl:defmethod roll_angle-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:roll_angle-val is deprecated.  Use imagenex831l-msg:roll_angle instead.")
  (roll_angle m))

(cl:ensure-generic-function 'pitch_angle-val :lambda-list '(m))
(cl:defmethod pitch_angle-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:pitch_angle-val is deprecated.  Use imagenex831l-msg:pitch_angle instead.")
  (pitch_angle m))

(cl:ensure-generic-function 'roll_acceleration-val :lambda-list '(m))
(cl:defmethod roll_acceleration-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:roll_acceleration-val is deprecated.  Use imagenex831l-msg:roll_acceleration instead.")
  (roll_acceleration m))

(cl:ensure-generic-function 'pitch_acceleration-val :lambda-list '(m))
(cl:defmethod pitch_acceleration-val ((m <ProcessedRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagenex831l-msg:pitch_acceleration-val is deprecated.  Use imagenex831l-msg:pitch_acceleration instead.")
  (pitch_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessedRange>) ostream)
  "Serializes a message object of type '<ProcessedRange>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intensity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'intensity))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'range_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'frequency_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'internal_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switches_accepted) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'head_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'step_direction) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profile_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'profile_range)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessedRange>) istream)
  "Deserializes a message object of type '<ProcessedRange>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intensity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intensity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'range_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'frequency_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'internal_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'switches_accepted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'head_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'step_direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profile_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'profile_range)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_acceleration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessedRange>)))
  "Returns string type for a message object of type '<ProcessedRange>"
  "imagenex831l/ProcessedRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessedRange)))
  "Returns string type for a message object of type 'ProcessedRange"
  "imagenex831l/ProcessedRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessedRange>)))
  "Returns md5sum for a message object of type '<ProcessedRange>"
  "e5edca712f3e169a5e30eb8cfb395c75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessedRange)))
  "Returns md5sum for a message object of type 'ProcessedRange"
  "e5edca712f3e169a5e30eb8cfb395c75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessedRange>)))
  "Returns full string definition for message of type '<ProcessedRange>"
  (cl:format cl:nil "# Processed echo data from sonar.~%std_msgs/Header header~%uint8[] intensity # intensity.~%~%bool range_error~%bool frequency_error~%bool internal_error~%bool switches_accepted~%~%float32 head_position~%bool step_direction # 0 ccw, 1 cw.~%float32 max_range~%uint16 profile_range~%~%float32 roll_angle~%float32 pitch_angle~%float32 roll_acceleration~%float32 pitch_acceleration~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessedRange)))
  "Returns full string definition for message of type 'ProcessedRange"
  (cl:format cl:nil "# Processed echo data from sonar.~%std_msgs/Header header~%uint8[] intensity # intensity.~%~%bool range_error~%bool frequency_error~%bool internal_error~%bool switches_accepted~%~%float32 head_position~%bool step_direction # 0 ccw, 1 cw.~%float32 max_range~%uint16 profile_range~%~%float32 roll_angle~%float32 pitch_angle~%float32 roll_acceleration~%float32 pitch_acceleration~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessedRange>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intensity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     4
     1
     4
     2
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessedRange>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessedRange
    (cl:cons ':header (header msg))
    (cl:cons ':intensity (intensity msg))
    (cl:cons ':range_error (range_error msg))
    (cl:cons ':frequency_error (frequency_error msg))
    (cl:cons ':internal_error (internal_error msg))
    (cl:cons ':switches_accepted (switches_accepted msg))
    (cl:cons ':head_position (head_position msg))
    (cl:cons ':step_direction (step_direction msg))
    (cl:cons ':max_range (max_range msg))
    (cl:cons ':profile_range (profile_range msg))
    (cl:cons ':roll_angle (roll_angle msg))
    (cl:cons ':pitch_angle (pitch_angle msg))
    (cl:cons ':roll_acceleration (roll_acceleration msg))
    (cl:cons ':pitch_acceleration (pitch_acceleration msg))
))
