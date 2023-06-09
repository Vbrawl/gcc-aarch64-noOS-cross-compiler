This is a repository that aims to compile binutils and gcc to target aarch64 machines that don't have an OS.


To use the scripts, all you need to do is run ```./install.sh```.
It will automatically install all the dependencies, download the source codes of the gcc and binutils, compile and install them.

NOTE: The script is configured to allow the continuation of broken downloads, so you may switch networks or stop the download
and continue later.

The script follows the instructions found at https://wiki.osdev.org/GCC_Cross-Compiler