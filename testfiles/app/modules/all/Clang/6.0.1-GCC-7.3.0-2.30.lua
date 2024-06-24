help([==[

Description
===========
C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.


More information
================
 - Homepage: http://clang.llvm.org/
]==])

whatis([==[Description: C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.]==])
whatis([==[Homepage: http://clang.llvm.org/]==])

local root = "/app/software/Clang/6.0.1-GCC-7.3.0-2.30"

conflict("Clang")

if not ( isloaded("GCC/7.3.0-2.30") ) then
    load("GCC/7.3.0-2.30")
end

if not ( isloaded("GMP/6.1.2-GCCcore-7.3.0") ) then
    load("GMP/6.1.2-GCCcore-7.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCLANG", root)
setenv("EBVERSIONCLANG", "6.0.1")
setenv("EBDEVELCLANG", pathJoin(root, "/app/logs/Clang-6.0.1-GCC-7.3.0-2.30-easybuild-devel"))

setenv("ASAN_SYMBOLIZER_PATH", "/app/software/Clang/6.0.1-GCC-7.3.0-2.30/bin/llvm-symbolizer")
-- Built with EasyBuild version 3.9.0
