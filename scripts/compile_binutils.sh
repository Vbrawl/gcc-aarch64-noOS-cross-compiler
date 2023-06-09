#!/usr/bin/bash



cd binutils_source_code/*
./configure --target=aarch64-elf --with-sysroot --disable-nls --disable-werror
make
