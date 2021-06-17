# Copyright(c) 2019 spdlog authors
# Distributed under the MIT License (http://opensource.org/licenses/MIT)

find_package(Threads REQUIRED)

set(SPDLOG_FMT_EXTERNAL OFF)
set(config_targets_file spdlogConfigTargets.cmake)

if(SPDLOG_FMT_EXTERNAL)
    include(CMakeFindDependencyMacro)
    find_dependency(fmt CONFIG)
endif()


include("${CMAKE_CURRENT_LIST_DIR}/${config_targets_file}")
