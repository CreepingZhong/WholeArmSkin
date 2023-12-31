#ifndef AIKIDO_CONTROL_TRAJECTORYEXECUTOR_HPP_
#define AIKIDO_CONTROL_TRAJECTORYEXECUTOR_HPP_

#include <chrono>
#include <future>
#include <set>

#include <dart/dart.hpp>

#include "aikido/common/pointers.hpp"
#include "aikido/control/Executor.hpp"
#include "aikido/control/util.hpp"
#include "aikido/trajectory/Trajectory.hpp"

namespace aikido {
namespace control {

AIKIDO_DECLARE_POINTERS(TrajectoryExecutor)

/// Abstract class for executing trajectories.
class TrajectoryExecutor : public Executor
{
public:
  /// Constructor
  /// Documentation Inherited
  /// \param[in] otherTypes Other resources this executor needs beyond
  /// TRAJECTORY
  TrajectoryExecutor(
      const std::vector<dart::dynamics::DegreeOfFreedom*>& dofs,
      const std::set<ExecutorType> otherTypes = std::set<ExecutorType>(),
      const std::chrono::milliseconds threadRate = defaultThreadRate)
    : Executor(
        concatenateTypes(
            std::set<ExecutorType>{ExecutorType::TRAJECTORY}, otherTypes),
        dofs,
        threadRate)
  {
  }
  virtual ~TrajectoryExecutor() = default;

  /// Validate the traj in preparation for execution.
  ///
  /// \param traj Trajectory to be validated
  virtual void validate(const trajectory::Trajectory* traj) = 0;

  /// Validate and execute traj, setting future upon completion. If a trajectory
  /// is already running, raise an exception unless the executor supports
  /// queuing.
  ///
  /// \param traj Trajectory to be executed.
  /// \return future<void> for trajectory execution. If trajectory terminates
  ///        before completion, future will be set to a runtime_error.
  virtual std::future<void> execute(const trajectory::ConstTrajectoryPtr& traj)
      = 0;

  // Documentation inherited.
  virtual void step(
      const std::chrono::system_clock::time_point& timepoint) override = 0;

  /// Cancel the current trajectory.
  virtual void cancel() = 0;

protected:
  /// Set of trajectories validated by executor
  std::set<const trajectory::Trajectory*> mValidatedTrajectories;

  /// Time of previous call
  std::chrono::system_clock::time_point mExecutionStartTime;
};

} // namespace control
} // namespace aikido

#endif
