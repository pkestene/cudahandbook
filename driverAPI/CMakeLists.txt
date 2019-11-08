build_exec(saxpyDrv chDrv)
target_include_directories(saxpyDrv PUBLIC ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
target_link_libraries(saxpyDrv PUBLIC cuda)
