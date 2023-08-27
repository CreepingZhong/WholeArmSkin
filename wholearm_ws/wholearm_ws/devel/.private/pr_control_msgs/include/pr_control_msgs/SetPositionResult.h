// Generated by gencpp from file pr_control_msgs/SetPositionResult.msg
// DO NOT EDIT!


#ifndef PR_CONTROL_MSGS_MESSAGE_SETPOSITIONRESULT_H
#define PR_CONTROL_MSGS_MESSAGE_SETPOSITIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pr_control_msgs
{
template <class ContainerAllocator>
struct SetPositionResult_
{
  typedef SetPositionResult_<ContainerAllocator> Type;

  SetPositionResult_()
    : success(false)
    , message()  {
    }
  SetPositionResult_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> const> ConstPtr;

}; // struct SetPositionResult_

typedef ::pr_control_msgs::SetPositionResult_<std::allocator<void> > SetPositionResult;

typedef boost::shared_ptr< ::pr_control_msgs::SetPositionResult > SetPositionResultPtr;
typedef boost::shared_ptr< ::pr_control_msgs::SetPositionResult const> SetPositionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr_control_msgs::SetPositionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr_control_msgs::SetPositionResult_<ContainerAllocator1> & lhs, const ::pr_control_msgs::SetPositionResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr_control_msgs::SetPositionResult_<ContainerAllocator1> & lhs, const ::pr_control_msgs::SetPositionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::pr_control_msgs::SetPositionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr_control_msgs/SetPositionResult";
  }

  static const char* value(const ::pr_control_msgs::SetPositionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"bool success\n"
"string message\n"
;
  }

  static const char* value(const ::pr_control_msgs::SetPositionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPositionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr_control_msgs::SetPositionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr_control_msgs::SetPositionResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR_CONTROL_MSGS_MESSAGE_SETPOSITIONRESULT_H
