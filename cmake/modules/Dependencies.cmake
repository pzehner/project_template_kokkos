include(FetchContent)

find_package(Kokkos 4.3.1 QUIET)
if(NOT Kokkos_FOUND)
    message(STATUS "Treating Kokkos as an internal dependency")
    FetchContent_Declare(
        kokkos
        URL https://github.com/kokkos/kokkos/archive/refs/tags/4.3.01.tar.gz
        URL_HASH MD5=243de871b3dc2cf3990c1c404032df83
    )
    FetchContent_MakeAvailable(kokkos)
endif()

if(MY_PROJECT_ENABLE_TESTS)
    find_package(googletest 1.15.2 QUIET)
    if(NOT googletest_FOUND)
        message(STATUS "Treating Google test as an internal dependency")
        FetchContent_Declare(
            google_test
            URL https://github.com/google/googletest/releases/download/v1.15.2/googletest-1.15.2.tar.gz
            URL_HASH MD5=7e11f6cfcf6498324ac82d567dcb891e
        )
        FetchContent_MakeAvailable(google_test)
        include(GoogleTest)
        include(CustomGoogleTest)
    endif()
endif()

if(MY_PROJECT_ENABLE_BENCHMARKS)
    find_package(benchmark 1.9.0 QUIET)
    if(NOT benchmark_FOUND)
        message(STATUS "Treating Google benchmark as an internal dependency")
        FetchContent_Declare(
            google_benchmark
            URL https://github.com/google/benchmark/archive/refs/tags/v1.9.0.tar.gz
            URL_HASH MD5=21a2604efeded8b4cbabc72f3e1c7a2a
        )
        FetchContent_MakeAvailable(google_benchmark)

        # override configuration
        set(BENCHMARK_ENABLE_GTEST_TESTS OFF CACHE BOOL "")
        set(BENCHMARK_ENABLE_INSTALL OFF CACHE BOOL "")
        set(BENCHMARK_ENABLE_TESTING OFF CACHE BOOL "")
    endif()
endif()

if(MY_PROJECT_ENABLE_DOCUMENTATION)
    find_package(Doxygen 1.9.1 REQUIRED QUIET)

    FetchContent_Declare(
        doxygen_awesome_css
        URL https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/v2.3.4.tar.gz
        URL_HASH MD5=82037c67569289e2852e9074365cee2d
    )
    FetchContent_MakeAvailable(doxygen_awesome_css)
    set(DOXYGEN_STYLE_CSS_PATH "${doxygen_awesome_css_SOURCE_DIR}/doxygen-awesome.css")
endif()
