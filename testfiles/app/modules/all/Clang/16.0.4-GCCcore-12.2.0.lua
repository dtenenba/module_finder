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

local root = "/app/software/Clang/16.0.4-GCCcore-12.2.0"

conflict("Clang")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("binutils/2.39-GCCcore-12.2.0") ) then
    load("binutils/2.39-GCCcore-12.2.0")
end

if not ( isloaded("hwloc/2.8.0-GCCcore-12.2.0") ) then
    load("hwloc/2.8.0-GCCcore-12.2.0")
end

if not ( isloaded("libxml2/2.10.3-GCCcore-12.2.0") ) then
    load("libxml2/2.10.3-GCCcore-12.2.0")
end

if not ( isloaded("ncurses/6.3-GCCcore-12.2.0") ) then
    load("ncurses/6.3-GCCcore-12.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-12.2.0") ) then
    load("GMP/6.2.1-GCCcore-12.2.0")
end

if not ( isloaded("Z3/4.12.2-GCCcore-12.2.0") ) then
    load("Z3/4.12.2-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/x86_64-unknown-linux-gnu"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLANG", root)
setenv("EBVERSIONCLANG", "16.0.4")
setenv("EBDEVELCLANG", pathJoin(root, "logs/Clang-16.0.4-GCCcore-12.2.0-easybuild-devel"))

setenv("ASAN_SYMBOLIZER_PATH", "/app/software/Clang/16.0.4-GCCcore-12.2.0/bin/llvm-symbolizer")
-- Built with EasyBuild version 4.8.0
