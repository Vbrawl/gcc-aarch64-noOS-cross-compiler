#!/usr/bin/bash


cd gcc_source_code/*
./configure --target=aarch64-elf --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-gcc
