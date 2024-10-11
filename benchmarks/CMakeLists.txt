add_executable(
    benchmark-name
    benchmark_name.cpp
    main.cpp
)

target_link_libraries(
    benchmark-name
    benchmark::benchmark
    MyProject::my-project
)
