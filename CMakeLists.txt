cmake_minimum_required(VERSION 3.21)
project(b-calc)

include(FetchContent)
FetchContent_Declare(battery
        GIT_REPOSITORY https://github.com/batterycenter/battery
        GIT_TAG        master
)
FetchContent_MakeAvailable(battery)

b_add_executable(${PROJECT_NAME}
        src/main.cpp
        src/App.cpp
)
target_include_directories(${PROJECT_NAME} PRIVATE include)
target_link_libraries(${PROJECT_NAME} PRIVATE battery::core)