if (NOT MY_PROJECT_ENABLE_GTEST_DISCOVER_TESTS)
    # Dummy function to disable gtest to discover tests
    function(gtest_discover_tests target)
    endfunction()
endif()
