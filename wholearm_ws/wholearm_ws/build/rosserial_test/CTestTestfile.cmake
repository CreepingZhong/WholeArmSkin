# CMake generated Testfile for 
# Source directory: /home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test
# Build directory: /home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosserial_test_rostest_test_rosserial_server_socket.test "/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/test_results/rosserial_test/rostest-test_rosserial_server_socket.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test --package=rosserial_test --results-filename test_rosserial_server_socket.xml --results-base-dir \"/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/test_results\" /home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/test/rosserial_server_socket.test ")
set_tests_properties(_ctest_rosserial_test_rostest_test_rosserial_server_socket.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/CMakeLists.txt;45;add_rostest;/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/CMakeLists.txt;0;")
add_test(_ctest_rosserial_test_rostest_test_rosserial_server_serial.test "/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/test_results/rosserial_test/rostest-test_rosserial_server_serial.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test --package=rosserial_test --results-filename test_rosserial_server_serial.xml --results-base-dir \"/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/test_results\" /home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/test/rosserial_server_serial.test ")
set_tests_properties(_ctest_rosserial_test_rostest_test_rosserial_server_serial.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/CMakeLists.txt;46;add_rostest;/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/CMakeLists.txt;0;")
add_test(_ctest_rosserial_test_rostest_test_rosserial_python_socket.test "/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/test_results/rosserial_test/rostest-test_rosserial_python_socket.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test --package=rosserial_test --results-filename test_rosserial_python_socket.xml --results-base-dir \"/home/emprise/wholearm_ws/wholearm_ws/build/rosserial_test/test_results\" /home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/test/rosserial_python_socket.test ")
set_tests_properties(_ctest_rosserial_test_rostest_test_rosserial_python_socket.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/CMakeLists.txt;47;add_rostest;/home/emprise/wholearm_ws/wholearm_ws/src/rosserial_noetic/rosserial_test/CMakeLists.txt;0;")
subdirs("gtest")
