build_exec(saxpyDrv chDrv)
target_include_directories(saxpyDrv PUBLIC ${CUDA_TOOLKIT_ROOT_DIR}/include)
target_link_libraries(saxpyDrv PUBLIC cuda)
