#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "aikido_trajectory" for configuration ""
set_property(TARGET aikido_trajectory APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(aikido_trajectory PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libaikido_trajectory.so"
  IMPORTED_SONAME_NOCONFIG "libaikido_trajectory.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS aikido_trajectory )
list(APPEND _IMPORT_CHECK_FILES_FOR_aikido_trajectory "${_IMPORT_PREFIX}/lib/libaikido_trajectory.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
