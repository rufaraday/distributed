project(Thread01)
cmake_minimum_required(VERSION 2.8)
aux_source_directory(. SRC_LIST)
add_executable(${PROJECT_NAME} ${SRC_LIST})
target_link_libraries(${PROJECT_NAME} pthread stdc++ boost_thread boost_system PocoFoundation PocoNet PocoUtil )
ADD_DEFINITIONS("-std=c++0x")
