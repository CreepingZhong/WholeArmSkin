#ifndef REWD_CONTROLLERS__TASK_SPACE_COMPLIANT_CONTROLLER_H
#define REWD_CONTROLLERS__TASK_SPACE_COMPLIANT_CONTROLLER_H

#include <vector>
#include <string>

#include <ros/node_handle.h>
#include <realtime_tools/realtime_buffer.h>

// actionlib
#include <actionlib/server/action_server.h>

// ROS messages
#include <pr_control_msgs/JointGroupCommandAction.h>
#include <trajectory_msgs/JointTrajectoryPoint.h>

// ros_controls
#include <hardware_interface/joint_command_interface.h>
#include <hardware_interface/joint_state_interface.h>
#include <hardware_interface/robot_hw.h>
#include <controller_interface/multi_interface_controller.h>
#include <realtime_tools/realtime_server_goal_handle.h>
#include <realtime_tools/realtime_buffer.h>
#include <realtime_tools/realtime_server_goal_handle.h>

#include <aikido/statespace/dart/MetaSkeletonStateSpace.hpp>
#include <dart/dynamics/dynamics.hpp>
#include <rewd_controllers/helpers.hpp>


namespace rewd_controllers {
class TaskSpaceCompliantController
    : public controller_interface::MultiInterfaceController<
          hardware_interface::EffortJointInterface,
          hardware_interface::JointStateInterface> {
public:
  TaskSpaceCompliantController();
  ~TaskSpaceCompliantController();

  /** \brief The init function is called to initialize the controller from a
   * non-realtime thread with a pointer to the hardware interface, itself,
   * instead of a pointer to a RobotHW.
   *
   * \param robot The specific hardware interface used by this controller.
   *
   * \param n A NodeHandle in the namespace from which the controller
   * should read its configuration, and where it should set up its ROS
   * interface.
   *
   * \returns True if initialization was successful and the controller
   * is ready to be started.
   */
  bool init(hardware_interface::RobotHW *robot, ros::NodeHandle &n) override;

  /** \brief This is called from within the realtime thread just before the
   * first call to \ref update
   *
   * \param time The current time
   */
  void starting(const ros::Time &time) override;
  void stopping(const ros::Time &time) override;

  /*!
   * \brief Issues commands to the joint. Should be called at regular intervals
   */
  void update(const ros::Time &time, const ros::Duration &period) override;

private:

  bool shouldAcceptRequests();
  bool shouldStopExecution(std::string &message);

  using ActionServer = actionlib::ActionServer<pr_control_msgs::JointGroupCommandAction>;
  using GoalHandle = ActionServer::GoalHandle;
  using RealtimeGoalHandle = realtime_tools::RealtimeServerGoalHandle<pr_control_msgs::JointGroupCommandAction>;
  using RealtimeGoalHandlePtr = boost::shared_ptr<RealtimeGoalHandle>;

  realtime_tools::RealtimeBuffer<trajectory_msgs::JointTrajectoryPoint> mCommandsBuffer;
  std::atomic_bool mExecuteDefaultCommand;

  std::string                                    mName;               ///< Controller name.
  std::vector< std::string >                     mJointNames;         ///< Controlled joint names
  RealtimeGoalHandlePtr                          mRTActiveGoal;     ///< Currently active action goal, if any.

  std::unique_ptr<ros::NodeHandle> mNodeHandle;
  dart::dynamics::SkeletonPtr mSkeleton;
  dart::dynamics::MetaSkeletonPtr mControlledSkeleton;
  std::vector<dart::dynamics::DegreeOfFreedom*> mDofs;
  dart::dynamics::BodyNode* mEENode;

  std::vector<hardware_interface::JointHandle> mControlledJointHandles;
  
  bool is_initialized = false;

  //DYNAMIC PARAMETER OF KINOVA GEN3
  Eigen::MatrixXd mJointStiffnessMatrix;
  Eigen::MatrixXd mJointStiffnessMatrix2;
  Eigen::MatrixXd mRotorInertiaMatrix;

  Eigen::MatrixXd mFrictionL;
  Eigen::MatrixXd mFrictionLp;

  Eigen::MatrixXd mJointKMatrix;
  Eigen::MatrixXd mJointDMatrix;

  Eigen::MatrixXd mTaskKMatrix;
  Eigen::MatrixXd mTaskDMatrix;

  long long int mCount;

  std::unique_ptr<SkeletonJointStateUpdater> mSkeletonUpdater;

  Eigen::VectorXd mActualTheta;
  Eigen::VectorXd mActualThetaDot;

  Eigen::VectorXd mTrueDesiredPosition;
  Eigen::VectorXd mTrueDesiredVelocity;

  Eigen::VectorXd mDesiredPosition;
  Eigen::VectorXd mDesiredVelocity;
  Eigen::VectorXd mDesiredTheta;
  Eigen::VectorXd mDesiredThetaDot;

  Eigen::VectorXd mDesiredEffort;
  Eigen::VectorXd mTaskEffort;
  Eigen::VectorXd mJointEffort;

  Eigen::VectorXd mLastDesiredPosition;
  Eigen::VectorXd mLastDesiredVelocity;

  Eigen::VectorXd mNominalTheta;
  Eigen::VectorXd mNominalThetaDot;
  Eigen::VectorXd mNominalThetaDDot;

  Eigen::VectorXd mNominalThetaPrev;
  Eigen::VectorXd mNominalThetaDotPrev;

  Eigen::VectorXd mZeros;
  Eigen::VectorXd mGravity;
  Eigen::VectorXd mQuasiGravity;
  Eigen::VectorXd mNominalFriction;

  Eigen::VectorXd mActualPosition;
  Eigen::VectorXd mActualVelocity;
  Eigen::VectorXd mActualEffort;

  ExtendedJointPosition* mExtendedJoints;
  ExtendedJointPosition* mExtendedJointsGravity;

  Eigen::Isometry3d mActualEETransform;
  Eigen::Isometry3d mDesiredEETransform;
  Eigen::Isometry3d mNominalEETransform;

  ros::Subscriber    mSubCommand;
  std::unique_ptr<ActionServer> mActionServer;
  ros::Timer         mGoalHandleTimer;
  ros::Timer         mGoalDurationTimer;
  ros::Duration      mActionMonitorPeriod;

  void goalCallback(GoalHandle gh);
  void cancelCallback(GoalHandle gh);
  void timeoutCallback(const ros::TimerEvent& event);
  void preemptActiveGoal();
  void commandCallback(const trajectory_msgs::JointTrajectoryPointConstPtr& msg);

  void setActionFeedback(const ros::Time& time);
};

} // namespace rewd_controllers

#endif // REWD_CONTROLLERS__TASK_SPACE_COMPLIANT_CONTROLLER_H
