cmake_minimum_required(VERSION 3.2)

set(CMAKE_CXX_STANDARD 14)

add_compile_options(-Wno-deprecated-declarations)
add_definitions(-DUSE_FFMPEG=1)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

if(USE_QTGUI)
    add_definitions(-DUSE_QTGUI=1)
endif()

include_directories(${common_inc_dirs} ${bmnnsdk_inc_dirs} ${ffmpeg_inc_dirs} ${opencv_inc_dirs})
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
link_directories(${ffmpeg_link_dirs} ${bmnnsdk_link_dirs} ${opencv_link_dirs})

add_subdirectory(yolov5_line)



