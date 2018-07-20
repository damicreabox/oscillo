file(GLOB_RECURSE GUI_SOURCE_FILES ${COMMON_PATH}/../gui/src/*.[hct]xx)
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
    -c ${COMMON_PATH}/cmake/.uncrustify
    ${ALL_SOURCE_FILES}
)
