build_exec(surf1Dmemset)

build_exec(surf2Dmemset)
target_link_libraries(surf2Dmemset PUBLIC cuda)

build_exec(surf2Dmemset_shmoo)
target_link_libraries(surf2Dmemset_shmoo PUBLIC cuda)

build_exec(tex1d_9bit)
target_link_libraries(tex1d_9bit PUBLIC cuda)

# problem with "_asm int 3"
#build_exec(tex1d_addressing)

build_exec(tex1dfetch_big)

build_exec(tex1dfetch)
build_exec(tex1dfetch_host)
build_exec(tex1dfetch_htod)
build_exec(tex1dfetch_int2float)
build_exec(tex1dfetch_offset)

build_exec(tex1d_unnormalized)
build_exec(tex2d_addressing)
build_exec(tex2d_addressing_device)
build_exec(tex2d_memset)

if (${OPENGL_FOUND} AND ${GLUT_FOUND})
  build_exec(tex2d_opengl)
  target_link_libraries(tex2d_opengl PUBLIC  GLUT::GLUT OpenGL::GLU OpenGL::OpenGL)
endif()

build_exec(tex2d_shmoo)
target_link_libraries(tex2d_shmoo PUBLIC cuda)


