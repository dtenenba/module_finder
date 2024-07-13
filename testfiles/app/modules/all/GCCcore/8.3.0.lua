help([==[

Description
===========
The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).


More information
================
 - Homepage: http://gcc.gnu.org/
]==])

whatis([==[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).]==])
whatis([==[Homepage: http://gcc.gnu.org/]==])
whatis([==[URL: http://gcc.gnu.org/]==])

local root = "/app/software/GCCcore/8.3.0"

conflict("GCCcore")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGCCCORE", root)
setenv("EBVERSIONGCCCORE", "8.3.0")
setenv("EBDEVELGCCCORE", pathJoin(root, "logs/GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2