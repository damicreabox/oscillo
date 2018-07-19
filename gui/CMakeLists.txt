cmake_minimum_required(VERSION 3.8)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Qt
# Set this to your Qt installation
set(RESOURCE_FOLDER res)
set(RESOURCE_FILES ${RESOURCE_FOLDER}/resources.qrc)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5Core REQUIRED)
find_package(Qt5Quick REQUIRED)

set(SOURCE_FILES src/main.cxx)

add_executable(oscillo-gui ${SOURCE_FILES} ${RESOURCE_FILES})

target_link_libraries(oscillo-gui Qt5::Core Qt5::Quick)