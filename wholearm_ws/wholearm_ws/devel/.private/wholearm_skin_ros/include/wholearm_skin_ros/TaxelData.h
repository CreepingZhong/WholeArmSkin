// Generated by gencpp from file wholearm_skin_ros/TaxelData.msg
// DO NOT EDIT!


#ifndef WHOLEARM_SKIN_ROS_MESSAGE_TAXELDATA_H
#define WHOLEARM_SKIN_ROS_MESSAGE_TAXELDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace wholearm_skin_ros
{
template <class ContainerAllocator>
struct TaxelData_
{
  typedef TaxelData_<ContainerAllocator> Type;

  TaxelData_()
    : cdc()
    , header()  {
    }
  TaxelData_(const ContainerAllocator& _alloc)
    : cdc(_alloc)
    , header(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint16_t, typename ContainerAllocator::template rebind<uint16_t>::other >  _cdc_type;
  _cdc_type cdc;

   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;





  typedef boost::shared_ptr< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> const> ConstPtr;

}; // struct TaxelData_

typedef ::wholearm_skin_ros::TaxelData_<std::allocator<void> > TaxelData;

typedef boost::shared_ptr< ::wholearm_skin_ros::TaxelData > TaxelDataPtr;
typedef boost::shared_ptr< ::wholearm_skin_ros::TaxelData const> TaxelDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wholearm_skin_ros::TaxelData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wholearm_skin_ros::TaxelData_<ContainerAllocator1> & lhs, const ::wholearm_skin_ros::TaxelData_<ContainerAllocator2> & rhs)
{
  return lhs.cdc == rhs.cdc &&
    lhs.header == rhs.header;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wholearm_skin_ros::TaxelData_<ContainerAllocator1> & lhs, const ::wholearm_skin_ros::TaxelData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wholearm_skin_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95e464596080dceb6079e99ff13a7f95";
  }

  static const char* value(const ::wholearm_skin_ros::TaxelData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95e464596080dcebULL;
  static const uint64_t static_value2 = 0x6079e99ff13a7f95ULL;
};

template<class ContainerAllocator>
struct DataType< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wholearm_skin_ros/TaxelData";
  }

  static const char* value(const ::wholearm_skin_ros::TaxelData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16[] cdc\n"
"Header header\n"
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
;
  }

  static const char* value(const ::wholearm_skin_ros::TaxelData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cdc);
      stream.next(m.header);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaxelData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wholearm_skin_ros::TaxelData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wholearm_skin_ros::TaxelData_<ContainerAllocator>& v)
  {
    s << indent << "cdc[]" << std::endl;
    for (size_t i = 0; i < v.cdc.size(); ++i)
    {
      s << indent << "  cdc[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.cdc[i]);
    }
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHOLEARM_SKIN_ROS_MESSAGE_TAXELDATA_H
