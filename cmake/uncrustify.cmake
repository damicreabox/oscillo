file(GLOB_RECURSE GUI_SOURCE_FILES gui/src/*.[hct]xx)
set(ALL_SOURCE_FILES ${GUI_SOURCE_FILES})

message(${ALL_SOURCE_FILES})

add_custom_target(uncrustify-check
    COMMAND uncrustify
    -c ${PROJECT_SOURCE_DIR}/cmake/.uncrustify
    --check
    ${ALL_SOURCE_FILES}
)

add_custom_target(uncrustify-fix
    COMMAND uncrustify
    --replace
    --no-backup
    -c ${PROJECT_SOURCE_DIR}/cmake/.uncrustify
    ${ALL_SOURCE_FILES}
)
