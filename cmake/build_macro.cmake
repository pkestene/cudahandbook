#
# define a macro to build an executable
#
macro(build_exec name)

  add_executable(${name} "")
  target_sources(${name}
    PUBLIC
    ${name}.cu)
  target_include_directories(${name}
    PUBLIC
    ${CMAKE_SOURCE_DIR}/chLib)
  
endmacro(build_exec)
