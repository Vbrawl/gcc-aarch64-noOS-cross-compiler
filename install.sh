#!/usr/bin/bash

export BIN_URL="https://ftp.gnu.org/gnu/binutils/binutils-2.40.tar.gz"
export GCC_URL="https://ftp.gnu.org/gnu/gcc/gcc-13.1.0/gcc-13.1.0.tar.gz"


# Download GCC and BinUtils source code
# GCC source code => gcc_source_code
# BIN source code => binutils_source_code
./scripts/download.sh

echo "Please give root permissions in order to build and install the cross-compiler:"
sudo ./scripts/compile_binutils.sh
sudo ./scripts/compile_gcc.sh


echo ""
echo ""
echo "The Aarch64-noOS cross-compiler has been compiled and installed!"
echo ""
echo ""
echo "Cleaning up..."

rm -rf gcc_source_code gcc_source_code.tar.gz
rm -rf binutils_source_code binutils_source_code.tar.gz
