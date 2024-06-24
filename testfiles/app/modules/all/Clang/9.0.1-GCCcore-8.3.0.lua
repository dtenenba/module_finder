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

local root = "/app/software/Clang/9.0.1-GCCcore-8.3.0"

conflict("Clang")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("binutils/2.32-GCCcore-8.3.0") ) then
    load("binutils/2.32-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("GMP/6.1.2-GCCcore-8.3.0") ) then
    load("GMP/6.1.2-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCLANG", root)
setenv("EBVERSIONCLANG", "9.0.1")
setenv("EBDEVELCLANG", pathJoin(root, "logs/Clang-9.0.1-GCCcore-8.3.0-easybuild-devel"))

setenv("ASAN_SYMBOLIZER_PATH", "/app/software/Clang/9.0.1-GCCcore-8.3.0/bin/llvm-symbolizer")
-- Built with EasyBuild version 4.1.0
