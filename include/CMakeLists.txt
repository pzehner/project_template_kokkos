add_library(
    my-project
    INTERFACE
)

target_include_directories(
    my-project
    INTERFACE
        $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}>
        $<INSTALL_INTERFACE:include>
)

target_link_libraries(
    my-project
    INTERFACE
        Kokkos::kokkos
)

install(
    DIRECTORY
        "${CMAKE_CURRENT_LIST_DIR}/my_project"
    DESTINATION
        include
)

add_library(
    MyProject::my-project
    ALIAS
        my-project
)
