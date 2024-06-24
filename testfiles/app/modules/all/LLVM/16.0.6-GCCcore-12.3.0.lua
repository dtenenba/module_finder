help([==[

Description
===========
The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.


More information
================
 - Homepage: https://llvm.org/
]==])

whatis([==[Description: The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.]==])
whatis([==[Homepage: https://llvm.org/]==])
whatis([==[URL: https://llvm.org/]==])

local root = "/app/software/LLVM/16.0.6-GCCcore-12.3.0"

conflict("LLVM")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("ncurses/6.4-GCCcore-12.3.0") ) then
    load("ncurses/6.4-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLLVM", root)
setenv("EBVERSIONLLVM", "16.0.6")
setenv("EBDEVELLLVM", pathJoin(root, "logs/LLVM-16.0.6-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
