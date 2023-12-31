// Generated by gencpp from file yui_bathing/Perception.msg
// DO NOT EDIT!


#ifndef YUI_BATHING_MESSAGE_PERCEPTION_H
#define YUI_BATHING_MESSAGE_PERCEPTION_H

#include <ros/service_traits.h>


#include <yui_bathing/PerceptionRequest.h>
#include <yui_bathing/PerceptionResponse.h>


namespace yui_bathing
{

struct Perception
{

typedef PerceptionRequest Request;
typedef PerceptionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Perception
} // namespace yui_bathing


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::yui_bathing::Perception > {
  static const char* value()
  {
    return "404b3b67dc1dc68f07af2a6c2cd600c0";
  }

  static const char* value(const ::yui_bathing::Perception&) { return value(); }
};

template<>
struct DataType< ::yui_bathing::Perception > {
  static const char* value()
  {
    return "yui_bathing/Perception";
  }

  static const char* value(const ::yui_bathing::Perception&) { return value(); }
};


// service_traits::MD5Sum< ::yui_bathing::PerceptionRequest> should match
// service_traits::MD5Sum< ::yui_bathing::Perception >
template<>
struct MD5Sum< ::yui_bathing::PerceptionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::yui_bathing::Perception >::value();
  }
  static const char* value(const ::yui_bathing::PerceptionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::yui_bathing::PerceptionRequest> should match
// service_traits::DataType< ::yui_bathing::Perception >
template<>
struct DataType< ::yui_bathing::PerceptionRequest>
{
  static const char* value()
  {
    return DataType< ::yui_bathing::Perception >::value();
  }
  static const char* value(const ::yui_bathing::PerceptionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::yui_bathing::PerceptionResponse> should match
// service_traits::MD5Sum< ::yui_bathing::Perception >
template<>
struct MD5Sum< ::yui_bathing::PerceptionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::yui_bathing::Perception >::value();
  }
  static const char* value(const ::yui_bathing::PerceptionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::yui_bathing::PerceptionResponse> should match
// service_traits::DataType< ::yui_bathing::Perception >
template<>
struct DataType< ::yui_bathing::PerceptionResponse>
{
  static const char* value()
  {
    return DataType< ::yui_bathing::Perception >::value();
  }
  static const char* value(const ::yui_bathing::PerceptionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YUI_BATHING_MESSAGE_PERCEPTION_H
