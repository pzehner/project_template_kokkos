cmake_minimum_required(VERSION 3.22)

project(
    MyProject
    LANGUAGES CXX
    VERSION 0.0.0
    DESCRIPTION ""
)

list(PREPEND CMAKE_MODULE_PATH "${MY_PROJECT_SOURCE_DIR}/cmake/modules")

set(CMAKE_CXX_STANDARD 17)

include(Options)
include(Dependencies)

add_subdirectory(include)

include(Install)

if(MY_PROJECT_ENABLE_TESTS)
    enable_testing()
    add_subdirectory(tests)
endif()

if(MY_PROJECT_ENABLE_EXAMPLES)
    add_subdirectory(examples)
endif()

if(MY_PROJECT_ENABLE_BENCHMARKS)
    add_subdirectory(benchmarks)
endif()

if(MY_PROJECT_ENABLE_COMPILE_BENCHMARKS)
    add_subdirectory(compile_benchmarks)
endif()

if(MY_PROJECT_ENABLE_DOCUMENTATION)
    add_subdirectory(docs)
endif()
