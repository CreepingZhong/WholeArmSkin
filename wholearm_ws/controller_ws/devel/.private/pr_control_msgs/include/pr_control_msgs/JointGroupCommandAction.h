// Generated by gencpp from file pr_control_msgs/JointGroupCommandAction.msg
// DO NOT EDIT!


#ifndef PR_CONTROL_MSGS_MESSAGE_JOINTGROUPCOMMANDACTION_H
#define PR_CONTROL_MSGS_MESSAGE_JOINTGROUPCOMMANDACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pr_control_msgs/JointGroupCommandActionGoal.h>
#include <pr_control_msgs/JointGroupCommandActionResult.h>
#include <pr_control_msgs/JointGroupCommandActionFeedback.h>

namespace pr_control_msgs
{
template <class ContainerAllocator>
struct JointGroupCommandAction_
{
  typedef JointGroupCommandAction_<ContainerAllocator> Type;

  JointGroupCommandAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  JointGroupCommandAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::pr_control_msgs::JointGroupCommandActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::pr_control_msgs::JointGroupCommandActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::pr_control_msgs::JointGroupCommandActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> const> ConstPtr;

}; // struct JointGroupCommandAction_

typedef ::pr_control_msgs::JointGroupCommandAction_<std::allocator<void> > JointGroupCommandAction;

typedef boost::shared_ptr< ::pr_control_msgs::JointGroupCommandAction > JointGroupCommandActionPtr;
typedef boost::shared_ptr< ::pr_control_msgs::JointGroupCommandAction const> JointGroupCommandActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator1> & lhs, const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator1> & lhs, const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8cf077f56d8a79df879989a10892e055";
  }

  static const char* value(const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8cf077f56d8a79dfULL;
  static const uint64_t static_value2 = 0x879989a10892e055ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr_control_msgs/JointGroupCommandAction";
  }

  static const char* value(const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"JointGroupCommandActionGoal action_goal\n"
"JointGroupCommandActionResult action_result\n"
"JointGroupCommandActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: pr_control_msgs/JointGroupCommandActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"JointGroupCommandGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pr_control_msgs/JointGroupCommandGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Used in time-stamping the goal.\n"
"Header header\n"
"\n"
"# Name list of the joints. You don't need to specify all joints of the\n"
"# robot. Joint names are case-sensitive.\n"
"string[] joint_names\n"
"\n"
"# A command to the joints listed in joint_names.\n"
"# Can be position, velocity, effort, and/or acceleration.\n"
"# The order must be identical.\n"
"# time_from_start is the command duration / timeout\n"
"# Set to 0 for no timeout.\n"
"trajectory_msgs/JointTrajectoryPoint command\n"
"\n"
"\n"
"================================================================================\n"
"MSG: trajectory_msgs/JointTrajectoryPoint\n"
"# Each trajectory point specifies either positions[, velocities[, accelerations]]\n"
"# or positions[, effort] for the trajectory to be executed.\n"
"# All specified values are in the same order as the joint names in JointTrajectory.msg\n"
"\n"
"float64[] positions\n"
"float64[] velocities\n"
"float64[] accelerations\n"
"float64[] effort\n"
"duration time_from_start\n"
"\n"
"================================================================================\n"
"MSG: pr_control_msgs/JointGroupCommandActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"JointGroupCommandResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pr_control_msgs/JointGroupCommandResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"int32 error_code\n"
"int32 SUCCESSFUL = 0\n"
"int32 INVALID_GOAL = -1\n"
"int32 INVALID_JOINTS = -2\n"
"int32 OLD_HEADER_TIMESTAMP = -3\n"
"\n"
"# Human readable description of the error code. Contains complementary\n"
"# information that is especially useful when execution fails, for instance:\n"
"# - INVALID_GOAL: The reason for the invalid goal (e.g., the requested\n"
"#   command violates the controller limits).\n"
"# - INVALID_JOINTS: The mismatch between the expected controller joints\n"
"#   and those provided in the goal.\n"
"string error_string\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pr_control_msgs/JointGroupCommandActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"JointGroupCommandFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: pr_control_msgs/JointGroupCommandFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"Header header\n"
"string[] joint_names\n"
"trajectory_msgs/JointTrajectoryPoint desired\n"
"trajectory_msgs/JointTrajectoryPoint actual\n"
"\n"
;
  }

  static const char* value(const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointGroupCommandAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr_control_msgs::JointGroupCommandAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::pr_control_msgs::JointGroupCommandActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::pr_control_msgs::JointGroupCommandActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::pr_control_msgs::JointGroupCommandActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR_CONTROL_MSGS_MESSAGE_JOINTGROUPCOMMANDACTION_H
