; Auto-generated. Do not edit!


(cl:in-package pr_control_msgs-msg)


;//! \htmlinclude JointGroupCommandAction.msg.html

(cl:defclass <JointGroupCommandAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type pr_control_msgs-msg:JointGroupCommandActionGoal
    :initform (cl:make-instance 'pr_control_msgs-msg:JointGroupCommandActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type pr_control_msgs-msg:JointGroupCommandActionResult
    :initform (cl:make-instance 'pr_control_msgs-msg:JointGroupCommandActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type pr_control_msgs-msg:JointGroupCommandActionFeedback
    :initform (cl:make-instance 'pr_control_msgs-msg:JointGroupCommandActionFeedback)))
)

(cl:defclass JointGroupCommandAction (<JointGroupCommandAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointGroupCommandAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointGroupCommandAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr_control_msgs-msg:<JointGroupCommandAction> is deprecated: use pr_control_msgs-msg:JointGroupCommandAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <JointGroupCommandAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_control_msgs-msg:action_goal-val is deprecated.  Use pr_control_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <JointGroupCommandAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_control_msgs-msg:action_result-val is deprecated.  Use pr_control_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <JointGroupCommandAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_control_msgs-msg:action_feedback-val is deprecated.  Use pr_control_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointGroupCommandAction>) ostream)
  "Serializes a message object of type '<JointGroupCommandAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointGroupCommandAction>) istream)
  "Deserializes a message object of type '<JointGroupCommandAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointGroupCommandAction>)))
  "Returns string type for a message object of type '<JointGroupCommandAction>"
  "pr_control_msgs/JointGroupCommandAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointGroupCommandAction)))
  "Returns string type for a message object of type 'JointGroupCommandAction"
  "pr_control_msgs/JointGroupCommandAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointGroupCommandAction>)))
  "Returns md5sum for a message object of type '<JointGroupCommandAction>"
  "8cf077f56d8a79df879989a10892e055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointGroupCommandAction)))
  "Returns md5sum for a message object of type 'JointGroupCommandAction"
  "8cf077f56d8a79df879989a10892e055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointGroupCommandAction>)))
  "Returns full string definition for message of type '<JointGroupCommandAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%JointGroupCommandActionGoal action_goal~%JointGroupCommandActionResult action_result~%JointGroupCommandActionFeedback action_feedback~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%JointGroupCommandGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Used in time-stamping the goal.~%Header header~%~%# Name list of the joints. You don't need to specify all joints of the~%# robot. Joint names are case-sensitive.~%string[] joint_names~%~%# A command to the joints listed in joint_names.~%# Can be position, velocity, effort, and/or acceleration.~%# The order must be identical.~%# time_from_start is the command duration / timeout~%# Set to 0 for no timeout.~%trajectory_msgs/JointTrajectoryPoint command~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%JointGroupCommandResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%~%# Human readable description of the error code. Contains complementary~%# information that is especially useful when execution fails, for instance:~%# - INVALID_GOAL: The reason for the invalid goal (e.g., the requested~%#   command violates the controller limits).~%# - INVALID_JOINTS: The mismatch between the expected controller joints~%#   and those provided in the goal.~%string error_string~%~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%JointGroupCommandFeedback feedback~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%string[] joint_names~%trajectory_msgs/JointTrajectoryPoint desired~%trajectory_msgs/JointTrajectoryPoint actual~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointGroupCommandAction)))
  "Returns full string definition for message of type 'JointGroupCommandAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%JointGroupCommandActionGoal action_goal~%JointGroupCommandActionResult action_result~%JointGroupCommandActionFeedback action_feedback~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%JointGroupCommandGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Used in time-stamping the goal.~%Header header~%~%# Name list of the joints. You don't need to specify all joints of the~%# robot. Joint names are case-sensitive.~%string[] joint_names~%~%# A command to the joints listed in joint_names.~%# Can be position, velocity, effort, and/or acceleration.~%# The order must be identical.~%# time_from_start is the command duration / timeout~%# Set to 0 for no timeout.~%trajectory_msgs/JointTrajectoryPoint command~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%JointGroupCommandResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%~%# Human readable description of the error code. Contains complementary~%# information that is especially useful when execution fails, for instance:~%# - INVALID_GOAL: The reason for the invalid goal (e.g., the requested~%#   command violates the controller limits).~%# - INVALID_JOINTS: The mismatch between the expected controller joints~%#   and those provided in the goal.~%string error_string~%~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%JointGroupCommandFeedback feedback~%~%================================================================================~%MSG: pr_control_msgs/JointGroupCommandFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%string[] joint_names~%trajectory_msgs/JointTrajectoryPoint desired~%trajectory_msgs/JointTrajectoryPoint actual~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointGroupCommandAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointGroupCommandAction>))
  "Converts a ROS message object to a list"
  (cl:list 'JointGroupCommandAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
