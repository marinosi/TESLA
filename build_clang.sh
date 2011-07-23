#!/bin/sh
# Build our patched LLVM/CLANG
# Run from ctsrd.svn/tesla/trunk


if [ "${CONCURRENCY_LEVEL}" == "" ] ; then
    CONCURRENCY_LEVEL="-j5"
fi


mkdir -p build
cd build
cmake ${CONCURRENCY_LEVEL} -DCLANG_BUILD_EXAMPLES=true ../llvm
make ${CONCURRENCY_LEVEL}
