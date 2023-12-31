###############################################################################
# CMake config file for Aikido
#
# This sets the following variables:
# aikido_INCLUDE_DIRS - Directories containing the Aikido include files.
# aikido_LIBRARIES    - Libraries needed to use Aikido.
# aikido_VERSION      - Aikido version.
###############################################################################


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was aikidoConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

function(aikido_traverse_components output_variable)
  set(output_components)

  foreach(component ${ARGN})
    # We should be able to elminate the <C>_VISITED property by detecting
    # whether the <C>_FOUND property is DEFINED. Unfortunately, DEFINED checks
    # whether or not define_property() was called, not whether the variable was
    # set. The exact behavior seems to vary between CMake versions, so we use
    # an extra variable instead.
    get_property(is_visited DIRECTORY PROPERTY "aikido_${component}_VISITED")
    set_property(DIRECTORY PROPERTY "aikido_${component}_VISITED" TRUE)

    if(NOT is_visited)
      set(component_include
        "${CMAKE_CURRENT_LIST_DIR}/aikido_${component}Component.cmake")
      set(target_include
        "${CMAKE_CURRENT_LIST_DIR}/aikido_${component}Targets.cmake")

      if(EXISTS "${component_include}" AND EXISTS "${target_include}")
        include("${component_include}")

        set_property(DIRECTORY PROPERTY "aikido_${component}_FOUND" TRUE)
        set_property(DIRECTORY
          PROPERTY "aikido_${component}_INCLUDE_DIRS"
          ${aikido_${component}_INCLUDE_DIRS})
        set_property(DIRECTORY
          PROPERTY "aikido_${component}_DEFINITIONS"
          ${aikido_${component}_DEFINITIONS})
        set_property(DIRECTORY
          PROPERTY "aikido_${component}_LIBRARIES"
          ${aikido_${component}_LIBRARIES})
        set_property(DIRECTORY
          PROPERTY "aikido_${component}_DEPENDENCIES"
          ${aikido_${component}_DEPENDENCIES})

        aikido_traverse_components("${output_variable}" 
          ${aikido_${component}_DEPENDENCIES})

        include("${target_include}")

        # This is not necessary in recent versions of cmake, which supports
        # transitive includes via INTERFACE_INCLUDE_DIRECTORIES.
        foreach(dependency ${aikido_${component}_DEPENDENCIES})
          set_property(DIRECTORY APPEND
            PROPERTY "aikido_${component}_INCLUDE_DIRS"
            ${aikido_${dependency}_INCLUDE_DIRS})
          set_property(DIRECTORY APPEND
            PROPERTY "aikido_${component}_DEFINITIONS"
            ${aikido_${dependency}_DEFINITIONS})
          # LIBRARIES is automatically inherited via INTERFACE_LINK_LIBRARIES.
        endforeach()

        list(APPEND output_components "${component}")
      else()
        set_property(DIRECTORY PROPERTY "aikido_${component}_FOUND" FALSE)
      endif()
    endif()
  endforeach()

  set("${output_variable}" ${output_components} PARENT_SCOPE)
endfunction()

function(aikido_export_variable variable)
  set("${variable}" ${${variable}} CACHE INTERNAL "")
endfunction()

function(aikido_export_property variable)
  get_property(value DIRECTORY PROPERTY "${variable}")
  set("${variable}" ${value} CACHE INTERNAL "")
endfunction()

function(aikido_export_notfound variable)
  set("${variable}" "${variable}-NOTFOUND" CACHE INTERNAL "")
endfunction()

function(aikido_package_init)
  aikido_traverse_components(required_components "${ARGN}")

  set(aikido_INCLUDE_DIRS)
  set(aikido_DEFINITIONS)
  set(aikido_LIBRARIES)

  foreach(component ${ARGN})
    aikido_export_property("aikido_${component}_FOUND")

    if(aikido_${component}_FOUND)
      aikido_export_property("aikido_${component}_INCLUDE_DIRS")
      aikido_export_property("aikido_${component}_DEFINITIONS")
      aikido_export_property("aikido_${component}_LIBRARIES")
      aikido_export_property("aikido_${component}_DEPENDENCIES")

      list(APPEND aikido_INCLUDE_DIRS ${aikido_${component}_INCLUDE_DIRS})
      list(APPEND aikido_DEFINITIONS ${aikido_${component}_DEFINITIONS})
      list(APPEND aikido_LIBRARIES ${aikido_${component}_LIBRARIES})
    else()
      aikido_export_notfound("aikido_${component}_INCLUDE_DIRS")
      aikido_export_notfound("aikido_${component}_DEFINITIONS")
      aikido_export_notfound("aikido_${component}_LIBRARIES")
      aikido_export_notfound("aikido_${component}_DEPENDENCIES")
    endif()
  endforeach()

  aikido_export_variable(aikido_INCLUDE_DIRS)
  aikido_export_variable(aikido_DEFINITIONS)
  aikido_export_variable(aikido_LIBRARIES)
endfunction()

#==============================================================================

if(aikido_FIND_COMPONENTS)
  set_and_check(aikido_PACKAGE_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include")
  set(aikido_INCLUDE_DIRS
    ${aikido_PACKAGE_INCLUDE_DIRS}
    
    CACHE INTERNAL "")

  aikido_package_init(${aikido_FIND_COMPONENTS})
else()
  message(WARNING
    "Aikido uses CMake components, but you called find_package(aikido) without"
    " the COMPONENTS keyword. No libraries will be added to aikido_LIBRARIES.")
endif()

# Use find_package_handle_standard_args to generate output. This handles the
# REQUIRED keyword, sets aikido_FOUND, and generates the appropriate STATUS and
# FATAL_ERROR messages. We intentionally do not check aikido_LIBRARIES here
# because it may be empty if the user did not specify any COMPONENTS.
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(aikido
  FOUND_VAR aikido_FOUND
  REQUIRED_VARS aikido_PACKAGE_INCLUDE_DIRS
  HANDLE_COMPONENTS)
