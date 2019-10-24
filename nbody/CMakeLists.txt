add_executable(nbody "")

target_sources(nbody PUBLIC
  nbody.cu
  nbody_CPU_AOS.cpp
  nbody_CPU_AOS_tiled.cpp 
  nbody_CPU_SOA.cpp
  nbody_CPU_AltiVec.cpp
  nbody_CPU_NEON.cpp
  nbody_CPU_SSE.cpp
  nbody_CPU_SSE_threaded.cpp)

target_sources(nbody PUBLIC
  nbody_GPU_shared.cu
  nbody_GPU_shared.cu 
  nbody_multiGPU.cu
  nbody_multiGPU_threaded.cu)

target_include_directories(nbody
    PUBLIC
    ${CMAKE_SOURCE_DIR}/chLib)

if ( "${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "x86_64" )
  target_compile_definitions(nbody PUBLIC HAVE_SSE)
elseif ( "${CMAKE_SYSTEM_PROCESSOR}" MATCHES "^ppc" )
  target_compile_definitions(nbody PUBLIC HAVE_ALTIVEC)
  target_compile_options(nbody PUBLIC -maltivec)
elseif ( "${CMAKE_SYSTEM_PROCESSOR}" MATCHES "^armv7l" )
  target_compile_definitions(nbody PUBLIC HAVE_NEON)
  target_compile_options(nbody PUBLIC -marm  -mfpu=neon -ffast-math)
endif ()
