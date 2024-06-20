#!/usr/bin/env bash
CLANG_PATH=/root/Toolchain/pdx-clang12

export PATH=${CLANG_PATH}/bin:${PATH}

# 设置编译器环境变量为使用 Pdx clang12
export CC="${CLANG_PATH}/bin/clang"
export LD="${CLANG_PATH}/bin/ld.lld"
export CXX="${CLANG_PATH}/bin/clang++"

./build-llvm.py --vendor-string Pdx \
--targets ARM AArch64 \
--projects clang lld \
--build-stage1-only \
--no-update \
-i /root/Toolchain/clang-r498229b

#./build-binutils.py --targets arm-linux-gnueabi aarch64-linux-gnu -i /root/Toolchain/pdx-clang16
