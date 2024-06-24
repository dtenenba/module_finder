help([==[

Description
===========
C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.


More information
================
 - Homepage: https://clang.llvm.org/
]==])

whatis([==[Description: C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.]==])
whatis([==[Homepage: https://clang.llvm.org/]==])
whatis([==[URL: https://clang.llvm.org/]==])

local root = "/app/software/Clang/12.0.1-GCCcore-11.2.0"

conflict("Clang")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("binutils/2.37-GCCcore-11.2.0") ) then
    load("binutils/2.37-GCCcore-11.2.0")
end

if not ( isloaded("hwloc/2.5.0-GCCcore-11.2.0") ) then
    load("hwloc/2.5.0-GCCcore-11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-11.2.0") ) then
    load("ncurses/6.2-GCCcore-11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

if not ( isloaded("Z3/4.8.12-GCCcore-11.2.0") ) then
    load("Z3/4.8.12-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLANG", root)
setenv("EBVERSIONCLANG", "12.0.1")
setenv("EBDEVELCLANG", pathJoin(root, "logs/Clang-12.0.1-GCCcore-11.2.0-easybuild-devel"))

setenv("ASAN_SYMBOLIZER_PATH", "/app/software/Clang/12.0.1-GCCcore-11.2.0/bin/llvm-symbolizer")
-- Built with EasyBuild version 4.5.4
