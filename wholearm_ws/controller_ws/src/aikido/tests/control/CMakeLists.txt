aikido_add_test(test_ControlExecutor
  test_ControlExecutor.cpp)
target_link_libraries(test_ControlExecutor
  "${PROJECT_NAME}_control")

aikido_add_test(test_InstantaneousTrajectoryExecutor
  test_InstantaneousTrajectoryExecutor.cpp)
target_link_libraries(test_InstantaneousTrajectoryExecutor
  "${PROJECT_NAME}_control")

aikido_add_test(test_JacobianExecutor
  test_JacobianExecutor.cpp)
target_link_libraries(test_JacobianExecutor
  "${PROJECT_NAME}_control")

aikido_add_test(test_KinematicSimulationTrajectoryExecutor
  test_KinematicSimulationTrajectoryExecutor.cpp)
target_link_libraries(test_KinematicSimulationTrajectoryExecutor
  "${PROJECT_NAME}_control")

aikido_add_test(test_KinematicSimulationPositionExecutor
  test_KinematicSimulationPositionExecutor.cpp)
target_link_libraries(test_KinematicSimulationPositionExecutor
  "${PROJECT_NAME}_control")

aikido_add_test(test_KinematicSimulationVelocityExecutor
  test_KinematicSimulationVelocityExecutor.cpp)
target_link_libraries(test_KinematicSimulationVelocityExecutor
  "${PROJECT_NAME}_control")

aikido_add_test(test_QueuedTrajectoryExecutor
  test_QueuedTrajectoryExecutor.cpp)
target_link_libraries(test_QueuedTrajectoryExecutor
  "${PROJECT_NAME}_control")

aikido_add_test(test_VisualServoingVelocityExecutor
  test_VisualServoingVelocityExecutor.cpp)
target_link_libraries(test_VisualServoingVelocityExecutor
  "${PROJECT_NAME}_control")

add_subdirectory("ros")

