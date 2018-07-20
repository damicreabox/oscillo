cmake_minimum_required(VERSION 2.8.4)

set(COMMON_PATH ${CMAKE_SOURCE_DIR}/../cmake/)
include(${COMMON_PATH}common.cmake)

set(CMAKE_TOOLCHAIN_FILE ${COMMON_PATH}/ArduinoToolchain.cmake)
set(PROJECT_NAME Sample)
project(${PROJECT_NAME})

set(${CMAKE_PROJECT_NAME}_SKETCH Oscillo.ino)

#### Uncomment below additional settings as needed.
# set(${CMAKE_PROJECT_NAME}_BOARD mega)
# set(${CMAKE_PROJECT_NAME}_PORT /dev/ttyACM0)
# set(mega.build.mcu atmega2560)
# set(mega.upload.protocol wiring)
# set(mega.upload.speed 115200)

set(${CMAKE_PROJECT_NAME}_BOARD uno)
set(${CMAKE_PROJECT_NAME}_PORT /dev/cu.usbmodem1411)
include(${COMMON_PATH}Platform/Arduino.cmake)

generate_arduino_firmware(${CMAKE_PROJECT_NAME})