# Project name

... for Kokkos (or "my-project" for short) is a ...

## Install

### With CMake

The best way is to use CMake.

#### As a subdirectory

Get the library in your project:

```sh
git clone https://github.com/org/my_project.git path/to/my_project
```

In your main CMake file:

```cmake
add_subdirectory(path/to/my_project)

target_link_libraries(
    my-lib
    PRIVATE
        MyProject::my-project
)
```

#### With FetchContent

In your main CMake file:

<!-- URL https://github.com/org/my-project/archive/refs/tags/0.1.0.tar.gz -->

```cmake
include(FetchContent)
FetchContent_Declare(
    my_project
    GIT_REPOSITORY https://github.com/org/my_project.git
    GIT_TAG master
)
FetchContent_MakeAvailable(my_project)

target_link_libraries(
    my-lib
    PRIVATE
        MyProject::my-project
)
```

#### As a locally available dependency

Get, then install the project:

```sh
git clone https://github.com/org/my_project.git
cd my_project
cmake -B build -DCMAKE_INSTALL_PREFIX=path/to/install -DCMAKE_BUILD_TYPE=Release # other Kokkos options here if needed
cmake --install build
```

In your main CMake file:

```cmake
find_package(MyProject REQUIRED)

target_link_libraries(
    my-lib
    PRIVATE
        MyProject::my-project
)
```

### Copy files

Alternatively, you can also copy `include/my_project` in your project and start using it.

## Tests

You can build tests with the CMake option `MY_PROJECT_ENABLE_TESTS`, and run them with `ctest`.

If you don't have a GPU available when compiling with a GPU backend activated, you have to disable the option `MY_PROJECT_ENABLE_GTEST_DISCOVER_TESTS`.

## Examples

You can build examples with the CMake option `MY_PROJECT_ENABLE_EXAMPLES`.
They should be run individually.

## Benchmarks

Benchmarks are built with the CMake option `MY_PROJECT_ENABLE_BENCHMARKS`.
They should be run individually.

## Compile benchmarks

Benchmarks to monitor compilation time are built with the CMake option `MY_PROJECT_ENABLE_COMPILE_BENCHMARKS`.
Please refer to the [proper documentation](./compile_benchmarks/README.md) for how to use them.

## Documentation

The API documentation is handled by Doxygen (1.9.1 or newer) and is built with the CMake option `MY_PROJECT_ENABLE_DOCUMENTATION`.
The private API is not included by default and is added with the option `MY_PROJECT_ENABLE_DOCUMENTATION_DEVMODE`.
The documentation is built with the target `docs`.

## Use

...
