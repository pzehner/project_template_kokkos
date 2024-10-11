include(CustomDoxygen)

create_doxyfile(
    "${MY_PROJECT_SOURCE_DIR}/include/my_project"
    ${MY_PROJECT_ENABLE_DOCUMENTATION_DEVMODE}
    DOXYFILE_PATH
)

add_docs(
    docs
    "${DOXYFILE_PATH}"
)
