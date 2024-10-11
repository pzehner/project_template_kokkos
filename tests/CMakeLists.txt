add_executable(
    test-name
    test_name.cpp
    main.cpp
)

target_link_libraries(
    test-name
    GTest::gtest
    MyProject::my-project
)

gtest_discover_tests(test-name)
