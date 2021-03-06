Documentation
-------------

Comprehensive documentation for Config4Cpp is available. However, it is
distributed separately from the source code. You can find the
documentation (in PDF and HTML formats) on www.config4star.org.


Compilation instructions
------------------------

The build system has been tested on: (1) Linux with G++, (2) Cygwin with
G++, and (3) Windows with Visual C++ 2013

To build on Linux or Cygwin, do the following:
	1. If you are compiling on Linux, then add the config4cpp/lib
	   directory into the LD_LIBRARY_PATH environment variable, so the
	   shared library can be located.

	2. Run "make" to build with optimization, or "make BUILD_TYPE=debug"
	   for a debug build. I recommend building with optimization.

To build on Windows with Visual C++, run the following commands:

	vcvars32.bat
	nmake -f Makefile.win

If you are building on another operating system, or with another
compiler, the you might need to edit "Makefile.inc" (if you are on a
UNIX-like operating system) or "Makefile.win.inc" (if you are on
Windows). You might also need to edit "src/platform.h" and
"src/platform.cpp".

Executables will be put into the "bin" directory, and library files will
be put into the "lib" directory.
