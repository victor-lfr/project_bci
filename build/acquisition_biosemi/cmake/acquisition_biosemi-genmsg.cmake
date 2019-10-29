# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "acquisition_biosemi: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iacquisition_biosemi:/home/thomas/project_bci/src/acquisition_biosemi/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(acquisition_biosemi_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg" NAME_WE)
add_custom_target(_acquisition_biosemi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acquisition_biosemi" "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg" ""
)

get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg" NAME_WE)
add_custom_target(_acquisition_biosemi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acquisition_biosemi" "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acquisition_biosemi
)
_generate_msg_cpp(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acquisition_biosemi
)

### Generating Services

### Generating Module File
_generate_module_cpp(acquisition_biosemi
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acquisition_biosemi
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(acquisition_biosemi_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(acquisition_biosemi_generate_messages acquisition_biosemi_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_cpp _acquisition_biosemi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_cpp _acquisition_biosemi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acquisition_biosemi_gencpp)
add_dependencies(acquisition_biosemi_gencpp acquisition_biosemi_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acquisition_biosemi_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acquisition_biosemi
)
_generate_msg_eus(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acquisition_biosemi
)

### Generating Services

### Generating Module File
_generate_module_eus(acquisition_biosemi
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acquisition_biosemi
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(acquisition_biosemi_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(acquisition_biosemi_generate_messages acquisition_biosemi_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_eus _acquisition_biosemi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_eus _acquisition_biosemi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acquisition_biosemi_geneus)
add_dependencies(acquisition_biosemi_geneus acquisition_biosemi_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acquisition_biosemi_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acquisition_biosemi
)
_generate_msg_lisp(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acquisition_biosemi
)

### Generating Services

### Generating Module File
_generate_module_lisp(acquisition_biosemi
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acquisition_biosemi
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(acquisition_biosemi_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(acquisition_biosemi_generate_messages acquisition_biosemi_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_lisp _acquisition_biosemi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_lisp _acquisition_biosemi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acquisition_biosemi_genlisp)
add_dependencies(acquisition_biosemi_genlisp acquisition_biosemi_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acquisition_biosemi_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acquisition_biosemi
)
_generate_msg_nodejs(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acquisition_biosemi
)

### Generating Services

### Generating Module File
_generate_module_nodejs(acquisition_biosemi
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acquisition_biosemi
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(acquisition_biosemi_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(acquisition_biosemi_generate_messages acquisition_biosemi_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_nodejs _acquisition_biosemi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_nodejs _acquisition_biosemi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acquisition_biosemi_gennodejs)
add_dependencies(acquisition_biosemi_gennodejs acquisition_biosemi_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acquisition_biosemi_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acquisition_biosemi
)
_generate_msg_py(acquisition_biosemi
  "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acquisition_biosemi
)

### Generating Services

### Generating Module File
_generate_module_py(acquisition_biosemi
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acquisition_biosemi
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(acquisition_biosemi_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(acquisition_biosemi_generate_messages acquisition_biosemi_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_echantillon.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_py _acquisition_biosemi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thomas/project_bci/src/acquisition_biosemi/msg/biosemi_result.msg" NAME_WE)
add_dependencies(acquisition_biosemi_generate_messages_py _acquisition_biosemi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acquisition_biosemi_genpy)
add_dependencies(acquisition_biosemi_genpy acquisition_biosemi_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acquisition_biosemi_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acquisition_biosemi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acquisition_biosemi
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(acquisition_biosemi_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acquisition_biosemi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acquisition_biosemi
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(acquisition_biosemi_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acquisition_biosemi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acquisition_biosemi
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(acquisition_biosemi_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acquisition_biosemi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acquisition_biosemi
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(acquisition_biosemi_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acquisition_biosemi)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acquisition_biosemi\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acquisition_biosemi
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(acquisition_biosemi_generate_messages_py std_msgs_generate_messages_py)
endif()
