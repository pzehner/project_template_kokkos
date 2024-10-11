add_library(
    compile-benchmark-name
    OBJECT
    compile_benchmark_name.cpp
)

target_link_libraries(
    compile-benchmark-name
    MyProject::my-project
)
