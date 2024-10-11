include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

install(
    TARGETS
        my-project
    EXPORT
        MyProjectTargets
    ARCHIVE DESTINATION
        "${CMAKE_INSTALL_LIBDIR}"
)

install(
    EXPORT
        MyProjectTargets
    NAMESPACE MyProject::
    DESTINATION
        "${CMAKE_INSTALL_LIBDIR}/cmake/MyProject"
)

configure_package_config_file(
    "${CMAKE_CURRENT_LIST_DIR}/Config.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/MyProjectConfig.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/MyProject"
    PATH_VARS
        CMAKE_INSTALL_LIBDIR
)

write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/MyProjectConfigVersion.cmake"
    VERSION ${CMAKE_MY_PROJECT_VERSION}
    COMPATIBILITY SameMajorVersion
    ARCH_INDEPENDENT
)

install(
    FILES
        "${CMAKE_CURRENT_BINARY_DIR}/MyProjectConfig.cmake"
        "${CMAKE_CURRENT_BINARY_DIR}/MyProjectConfigVersion.cmake"
    DESTINATION
        "${CMAKE_INSTALL_LIBDIR}/cmake/MyProject"
)
