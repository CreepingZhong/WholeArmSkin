#include <pybind11/pybind11.h>
#include <dart/utils/urdf/urdf.hpp>
#include <aikido/io.hpp>
#include <aikido/planner.hpp>
#include "utils.hpp"

namespace py = pybind11;

namespace aikido {
namespace python {

void World(py::module& m)
{
  py::class_<aikido::planner::World, std::shared_ptr<aikido::planner::World>>(m, "World")
      .def("addBodyFromURDF",
           [](aikido::planner::World* self,
           const std::string& uri,
           std::vector<double> objectPose) // x, y, z, qw, qx, qy, qz)
      -> std::shared_ptr<::dart::dynamics::Skeleton>
  {
    auto transform = vectorToIsometry(objectPose);

    const auto resourceRetriever
        = std::make_shared<aikido::io::CatkinResourceRetriever>();
    const auto skeleton = io::loadSkeletonFromURDF(resourceRetriever, uri, transform);

    self->addSkeleton(skeleton);
    return skeleton;
  }
  );
}

} // namespace python
} // namespace aikido
