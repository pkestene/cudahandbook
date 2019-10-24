#
# define a macro to build an executable
#
macro(build_exec)

  # get all arguments
  set (args ${ARGN})
  list(LENGTH args num_args)

  if(${num_args} GREATER 0)
    set(name ${ARGV0})
    list(GET args 0 name)
  endif()

  add_executable(${name} "")
  
  foreach(other_arg IN LISTS args)
    if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/${other_arg}.cu")
      set(filename ${other_arg}.cu)
    else()
      set(filename ${other_arg}.cpp)
    endif()

    target_sources(${name}
      PUBLIC
      ${filename})
  endforeach()

  target_include_directories(${name}
    PUBLIC
    ${CMAKE_SOURCE_DIR}/chLib)
  
endmacro(build_exec)
