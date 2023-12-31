// Generated by gencpp from file yui_bathing/PatchProcessorResponse.msg
// DO NOT EDIT!


#ifndef YUI_BATHING_MESSAGE_PATCHPROCESSORRESPONSE_H
#define YUI_BATHING_MESSAGE_PATCHPROCESSORRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32MultiArray.h>

namespace yui_bathing
{
template <class ContainerAllocator>
struct PatchProcessorResponse_
{
  typedef PatchProcessorResponse_<ContainerAllocator> Type;

  PatchProcessorResponse_()
    : trajectory()  {
    }
  PatchProcessorResponse_(const ContainerAllocator& _alloc)
    : trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32MultiArray_<ContainerAllocator>  _trajectory_type;
  _trajectory_type trajectory;





  typedef boost::shared_ptr< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PatchProcessorResponse_

typedef ::yui_bathing::PatchProcessorResponse_<std::allocator<void> > PatchProcessorResponse;

typedef boost::shared_ptr< ::yui_bathing::PatchProcessorResponse > PatchProcessorResponsePtr;
typedef boost::shared_ptr< ::yui_bathing::PatchProcessorResponse const> PatchProcessorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator1> & lhs, const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator2> & rhs)
{
  return lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator1> & lhs, const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace yui_bathing

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1e2ca58cb917f5f3ddd31dde58029164";
  }

  static const char* value(const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1e2ca58cb917f5f3ULL;
  static const uint64_t static_value2 = 0xddd31dde58029164ULL;
};

template<class ContainerAllocator>
struct DataType< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yui_bathing/PatchProcessorResponse";
  }

  static const char* value(const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32MultiArray trajectory\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float32[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PatchProcessorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yui_bathing::PatchProcessorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yui_bathing::PatchProcessorResponse_<ContainerAllocator>& v)
  {
    s << indent << "trajectory: ";
    s << std::endl;
    Printer< ::std_msgs::Float32MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.trajectory);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YUI_BATHING_MESSAGE_PATCHPROCESSORRESPONSE_H
