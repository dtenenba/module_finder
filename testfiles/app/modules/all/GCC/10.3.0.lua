help([==[

Description
===========
The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).


More information
================
 - Homepage: https://gcc.gnu.org/
]==])

whatis([==[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).]==])
whatis([==[Homepage: https://gcc.gnu.org/]==])
whatis([==[URL: https://gcc.gnu.org/]==])

local root = "/app/software/GCC/10.3.0"

conflict("GCC")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("binutils/2.36.1-GCCcore-10.3.0") ) then
    load("binutils/2.36.1-GCCcore-10.3.0")
end

setenv("EBROOTGCC", "/app/software/GCCcore/10.3.0")
setenv("EBVERSIONGCC", "10.3.0")
setenv("EBDEVELGCC", pathJoin(root, "logs/GCC-10.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
