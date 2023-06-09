#!/usr/bin/bash

# Install dependencies (https://wiki.osdev.org/GCC_Cross-Compiler#Preparing_for_the_build)
sudo apt update
sudo apt install build-essential -y
sudo apt install bison -y
sudo apt install flex -y
sudo apt install libgmp3-dev -y
sudo apt install libmpc-dev -y
sudo apt install libmpfr-dev -y
sudo apt install texinfo -y
sudo apt install libcloog-isl-dev -y
sudo apt install libisl-dev -y




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
