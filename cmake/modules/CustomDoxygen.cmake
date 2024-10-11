function(create_doxyfile input_list enable_devmode doxyfile_out)
    # set Doxyfile paths
    set(DOXYGEN_IN ${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in)
    set(DOXYGEN_OUT ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile)

    # set custom Doxygen parameters
    string(REPLACE ";" " " DOXYGEN_INPUT "${input_list}")
    if(enable_devmode)
        set(DOXYGEN_DEVMODE "YES")
    else()
        set(DOXYGEN_DEVMODE "NO")
    endif()

    # generate the file
    configure_file(
        ${DOXYGEN_IN}
        ${DOXYGEN_OUT}
        @ONLY
    )

    # set parent doxyfile_out variable
    set(${${doxyfile_out}} "${DOXYGEN_OUT}" PARENT_SCOPE)
endfunction()

function(add_docs target doxyfile_in)
    add_custom_target(
        ${target}
        ALL
        COMMAND ${DOXYGEN_EXECUTABLE} ${doxyfile_in}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Generating API documentation with Doxygen"
        VERBATIM
    )
endfunction()
