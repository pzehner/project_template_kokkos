# tests
option(MY_PROJECT_ENABLE_TESTS "Build tests for the library")

# allow gtest to discover tests
option(MY_PROJECT_ENABLE_GTEST_DISCOVER_TESTS "Enable Gtest to discover tests by attempting to run them" ON)

# examples
option(MY_PROJECT_ENABLE_EXAMPLES "Build examples of the library")

# benchmarks
option(MY_PROJECT_ENABLE_BENCHMARKS "Build benchmarks of the library")

# compile benchmarks
option(MY_PROJECT_ENABLE_COMPILE_BENCHMARKS "Build compile benchmarks of the library")

# documentation
option(MY_PROJECT_ENABLE_DOCUMENTATION "Build documentation of the library")

# documentation for project developers
option(MY_PROJECT_ENABLE_DOCUMENTATION_DEVMODE "Build developers documentation of the library")
