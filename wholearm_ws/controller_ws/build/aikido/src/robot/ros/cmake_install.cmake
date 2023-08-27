# Install script for directory: /home/emprise/wholearm_ws/controller_ws/src/aikido/src/robot/ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/emprise/wholearm_ws/controller_ws/devel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aikido/cmake/aikido_robot_rosTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aikido/cmake/aikido_robot_rosTargets.cmake"
         "/home/emprise/wholearm_ws/controller_ws/build/aikido/src/robot/ros/CMakeFiles/Export/lib/aikido/cmake/aikido_robot_rosTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aikido/cmake/aikido_robot_rosTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aikido/cmake/aikido_robot_rosTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aikido/cmake" TYPE FILE FILES "/home/emprise/wholearm_ws/controller_ws/build/aikido/src/robot/ros/CMakeFiles/Export/lib/aikido/cmake/aikido_robot_rosTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aikido/cmake" TYPE FILE FILES "/home/emprise/wholearm_ws/controller_ws/build/aikido/src/robot/ros/CMakeFiles/Export/lib/aikido/cmake/aikido_robot_rosTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaikido_robot_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaikido_robot_ros.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaikido_robot_ros.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/emprise/wholearm_ws/controller_ws/build/aikido/src/robot/ros/libaikido_robot_ros.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaikido_robot_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaikido_robot_ros.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaikido_robot_ros.so"
         OLD_RPATH "/home/emprise/wholearm_ws/controller_ws/build/aikido/src/robot:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/io:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/planner/ompl:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/planner/parabolic:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/planner/kunzretimer:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/planner/vectorfield:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/planner:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/constraint:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/control:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/trajectory:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/common:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/distance:/home/emprise/wholearm_ws/controller_ws/build/aikido/src/statespace:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaikido_robot_ros.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

