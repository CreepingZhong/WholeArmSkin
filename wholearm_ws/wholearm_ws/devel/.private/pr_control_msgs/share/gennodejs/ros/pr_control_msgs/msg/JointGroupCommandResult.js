// Auto-generated. Do not edit!

// (in-package pr_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointGroupCommandResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_code = null;
      this.error_string = null;
    }
    else {
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('error_string')) {
        this.error_string = initObj.error_string
      }
      else {
        this.error_string = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointGroupCommandResult
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [error_string]
    bufferOffset = _serializer.string(obj.error_string, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointGroupCommandResult
    let len;
    let data = new JointGroupCommandResult(null);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_string]
    data.error_string = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_string);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pr_control_msgs/JointGroupCommandResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '163c90cc66958823fc0b619077c84273';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    int32 error_code
    int32 SUCCESSFUL = 0
    int32 INVALID_GOAL = -1
    int32 INVALID_JOINTS = -2
    int32 OLD_HEADER_TIMESTAMP = -3
    
    # Human readable description of the error code. Contains complementary
    # information that is especially useful when execution fails, for instance:
    # - INVALID_GOAL: The reason for the invalid goal (e.g., the requested
    #   command violates the controller limits).
    # - INVALID_JOINTS: The mismatch between the expected controller joints
    #   and those provided in the goal.
    string error_string
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointGroupCommandResult(null);
    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.error_string !== undefined) {
      resolved.error_string = msg.error_string;
    }
    else {
      resolved.error_string = ''
    }

    return resolved;
    }
};

// Constants for message
JointGroupCommandResult.Constants = {
  SUCCESSFUL: 0,
  INVALID_GOAL: -1,
  INVALID_JOINTS: -2,
  OLD_HEADER_TIMESTAMP: -3,
}

module.exports = JointGroupCommandResult;
