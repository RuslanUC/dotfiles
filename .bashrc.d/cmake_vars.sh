#!/bin/bash

export CMAKE_CXX_COMPILER_LAUNCHER=ccache
export CMAKE_C_COMPILER_LAUNCHER=ccache
export CMAKE_LINKER=mold
export CMAKE_CXX_FLAGS="-fuse-ld=mold"
#export CCACHE_PREFIX="distcc"
