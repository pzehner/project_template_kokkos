add_executable(
    example-name
    example_name.cpp
)

target_link_libraries(
    example-name
    MyProject::my-project
)
