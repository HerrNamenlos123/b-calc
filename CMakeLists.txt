cmake_minimum_required(VERSION 3.21)
project(b-calc)

#include(FetchContent)
#message(STATUS "Fetching Battery...")
#FetchContent_Declare(battery
#        GIT_REPOSITORY https://github.com/batterycenter/battery
#        GIT_TAG        master
#)
#FetchContent_MakeAvailable(battery)
#message(STATUS "Fetching Battery... Done")
add_subdirectory(cmake-build-debug/_deps/battery-src)

b_add_executable(${PROJECT_NAME}
        src/main.cpp
        src/App.cpp
)
target_include_directories(${PROJECT_NAME} PRIVATE include)
target_link_libraries(${PROJECT_NAME} PRIVATE battery::core)

b_icon(${PROJECT_NAME} assets/icon.png)
b_embed(${PROJECT_NAME} src/ui/main.lua)