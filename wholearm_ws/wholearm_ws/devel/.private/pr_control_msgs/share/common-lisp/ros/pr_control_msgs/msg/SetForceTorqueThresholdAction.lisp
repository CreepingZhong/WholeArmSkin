; Auto-generated. Do not edit!


(cl:in-package pr_control_msgs-msg)


;//! \htmlinclude SetForceTorqueThresholdAction.msg.html

(cl:defclass <SetForceTorqueThresholdAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type pr_control_msgs-msg:SetForceTorqueThresholdActionGoal
    :initform (cl:make-instance 'pr_control_msgs-msg:SetForceTorqueThresholdActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type pr_control_msgs-msg:SetForceTorqueThresholdActionResult
    :initform (cl:make-instance 'pr_control_msgs-msg:SetForceTorqueThresholdActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type pr_control_msgs-msg:SetForceTorqueThresholdActionFeedback
    :initform (cl:make-instance 'pr_control_msgs-msg:SetForceTorqueThresholdActionFeedback)))
)

(cl:defclass SetForceTorqueThresholdAction (<SetForceTorqueThresholdAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetForceTorqueThresholdAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetForceTorqueThresholdAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr_control_msgs-msg:<SetForceTorqueThresholdAction> is deprecated: use pr_control_msgs-msg:SetForceTorqueThresholdAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <SetForceTorqueThresholdAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_control_msgs-msg:action_goal-val is deprecated.  Use pr_control_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <SetForceTorqueThresholdAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_control_msgs-msg:action_result-val is deprecated.  Use pr_control_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <SetForceTorqueThresholdAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr_control_msgs-msg:action_feedback-val is deprecated.  Use pr_control_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetForceTorqueThresholdAction>) ostream)
  "Serializes a message object of type '<SetForceTorqueThresholdAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetForceTorqueThresholdAction>) istream)
  "Deserializes a message object of type '<SetForceTorqueThresholdAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetForceTorqueThresholdAction>)))
  "Returns string type for a message object of type '<SetForceTorqueThresholdAction>"
  "pr_control_msgs/SetForceTorqueThresholdAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetForceTorqueThresholdAction)))
  "Returns string type for a message object of type 'SetForceTorqueThresholdAction"
  "pr_control_msgs/SetForceTorqueThresholdAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetForceTorqueThresholdAction>)))
  "Returns md5sum for a message object of type '<SetForceTorqueThresholdAction>"
  "16d4d454a6386108266b58853b081f41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetForceTorqueThresholdAction)))
  "Returns md5sum for a message object of type 'SetForceTorqueThresholdAction"
  "16d4d454a6386108266b58853b081f41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetForceTorqueThresholdAction>)))
  "Returns full string definition for message of type '<SetForceTorqueThresholdAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%SetForceTorqueThresholdActionGoal action_goal~%SetForceTorqueThresholdActionResult action_result~%SetForceTorqueThresholdActionFeedback action_feedback~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%SetForceTorqueThresholdGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float64 force_threshold~%float64 torque_threshold~%bool retare~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%SetForceTorqueThresholdResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%string message~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%SetForceTorqueThresholdFeedback feedback~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetForceTorqueThresholdAction)))
  "Returns full string definition for message of type 'SetForceTorqueThresholdAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%SetForceTorqueThresholdActionGoal action_goal~%SetForceTorqueThresholdActionResult action_result~%SetForceTorqueThresholdActionFeedback action_feedback~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%SetForceTorqueThresholdGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float64 force_threshold~%float64 torque_threshold~%bool retare~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%SetForceTorqueThresholdResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%string message~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%SetForceTorqueThresholdFeedback feedback~%~%================================================================================~%MSG: pr_control_msgs/SetForceTorqueThresholdFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetForceTorqueThresholdAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetForceTorqueThresholdAction>))
  "Converts a ROS message object to a list"
  (cl:list 'SetForceTorqueThresholdAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
