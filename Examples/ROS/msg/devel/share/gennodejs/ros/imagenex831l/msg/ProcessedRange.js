// Auto-generated. Do not edit!

// (in-package imagenex831l.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ProcessedRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.intensity = null;
      this.range_error = null;
      this.frequency_error = null;
      this.internal_error = null;
      this.switches_accepted = null;
      this.head_position = null;
      this.step_direction = null;
      this.max_range = null;
      this.profile_range = null;
      this.roll_angle = null;
      this.pitch_angle = null;
      this.roll_acceleration = null;
      this.pitch_acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('intensity')) {
        this.intensity = initObj.intensity
      }
      else {
        this.intensity = [];
      }
      if (initObj.hasOwnProperty('range_error')) {
        this.range_error = initObj.range_error
      }
      else {
        this.range_error = false;
      }
      if (initObj.hasOwnProperty('frequency_error')) {
        this.frequency_error = initObj.frequency_error
      }
      else {
        this.frequency_error = false;
      }
      if (initObj.hasOwnProperty('internal_error')) {
        this.internal_error = initObj.internal_error
      }
      else {
        this.internal_error = false;
      }
      if (initObj.hasOwnProperty('switches_accepted')) {
        this.switches_accepted = initObj.switches_accepted
      }
      else {
        this.switches_accepted = false;
      }
      if (initObj.hasOwnProperty('head_position')) {
        this.head_position = initObj.head_position
      }
      else {
        this.head_position = 0.0;
      }
      if (initObj.hasOwnProperty('step_direction')) {
        this.step_direction = initObj.step_direction
      }
      else {
        this.step_direction = false;
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0.0;
      }
      if (initObj.hasOwnProperty('profile_range')) {
        this.profile_range = initObj.profile_range
      }
      else {
        this.profile_range = 0;
      }
      if (initObj.hasOwnProperty('roll_angle')) {
        this.roll_angle = initObj.roll_angle
      }
      else {
        this.roll_angle = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_angle')) {
        this.pitch_angle = initObj.pitch_angle
      }
      else {
        this.pitch_angle = 0.0;
      }
      if (initObj.hasOwnProperty('roll_acceleration')) {
        this.roll_acceleration = initObj.roll_acceleration
      }
      else {
        this.roll_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_acceleration')) {
        this.pitch_acceleration = initObj.pitch_acceleration
      }
      else {
        this.pitch_acceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessedRange
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [intensity]
    bufferOffset = _arraySerializer.uint8(obj.intensity, buffer, bufferOffset, null);
    // Serialize message field [range_error]
    bufferOffset = _serializer.bool(obj.range_error, buffer, bufferOffset);
    // Serialize message field [frequency_error]
    bufferOffset = _serializer.bool(obj.frequency_error, buffer, bufferOffset);
    // Serialize message field [internal_error]
    bufferOffset = _serializer.bool(obj.internal_error, buffer, bufferOffset);
    // Serialize message field [switches_accepted]
    bufferOffset = _serializer.bool(obj.switches_accepted, buffer, bufferOffset);
    // Serialize message field [head_position]
    bufferOffset = _serializer.float32(obj.head_position, buffer, bufferOffset);
    // Serialize message field [step_direction]
    bufferOffset = _serializer.bool(obj.step_direction, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.float32(obj.max_range, buffer, bufferOffset);
    // Serialize message field [profile_range]
    bufferOffset = _serializer.uint16(obj.profile_range, buffer, bufferOffset);
    // Serialize message field [roll_angle]
    bufferOffset = _serializer.float32(obj.roll_angle, buffer, bufferOffset);
    // Serialize message field [pitch_angle]
    bufferOffset = _serializer.float32(obj.pitch_angle, buffer, bufferOffset);
    // Serialize message field [roll_acceleration]
    bufferOffset = _serializer.float32(obj.roll_acceleration, buffer, bufferOffset);
    // Serialize message field [pitch_acceleration]
    bufferOffset = _serializer.float32(obj.pitch_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessedRange
    let len;
    let data = new ProcessedRange(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [intensity]
    data.intensity = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [range_error]
    data.range_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frequency_error]
    data.frequency_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [internal_error]
    data.internal_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [switches_accepted]
    data.switches_accepted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [head_position]
    data.head_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [step_direction]
    data.step_direction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [profile_range]
    data.profile_range = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [roll_angle]
    data.roll_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_angle]
    data.pitch_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll_acceleration]
    data.roll_acceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_acceleration]
    data.pitch_acceleration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.intensity.length;
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imagenex831l/ProcessedRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5edca712f3e169a5e30eb8cfb395c75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Processed echo data from sonar.
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessedRange(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.intensity !== undefined) {
      resolved.intensity = msg.intensity;
    }
    else {
      resolved.intensity = []
    }

    if (msg.range_error !== undefined) {
      resolved.range_error = msg.range_error;
    }
    else {
      resolved.range_error = false
    }

    if (msg.frequency_error !== undefined) {
      resolved.frequency_error = msg.frequency_error;
    }
    else {
      resolved.frequency_error = false
    }

    if (msg.internal_error !== undefined) {
      resolved.internal_error = msg.internal_error;
    }
    else {
      resolved.internal_error = false
    }

    if (msg.switches_accepted !== undefined) {
      resolved.switches_accepted = msg.switches_accepted;
    }
    else {
      resolved.switches_accepted = false
    }

    if (msg.head_position !== undefined) {
      resolved.head_position = msg.head_position;
    }
    else {
      resolved.head_position = 0.0
    }

    if (msg.step_direction !== undefined) {
      resolved.step_direction = msg.step_direction;
    }
    else {
      resolved.step_direction = false
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0.0
    }

    if (msg.profile_range !== undefined) {
      resolved.profile_range = msg.profile_range;
    }
    else {
      resolved.profile_range = 0
    }

    if (msg.roll_angle !== undefined) {
      resolved.roll_angle = msg.roll_angle;
    }
    else {
      resolved.roll_angle = 0.0
    }

    if (msg.pitch_angle !== undefined) {
      resolved.pitch_angle = msg.pitch_angle;
    }
    else {
      resolved.pitch_angle = 0.0
    }

    if (msg.roll_acceleration !== undefined) {
      resolved.roll_acceleration = msg.roll_acceleration;
    }
    else {
      resolved.roll_acceleration = 0.0
    }

    if (msg.pitch_acceleration !== undefined) {
      resolved.pitch_acceleration = msg.pitch_acceleration;
    }
    else {
      resolved.pitch_acceleration = 0.0
    }

    return resolved;
    }
};

module.exports = ProcessedRange;
