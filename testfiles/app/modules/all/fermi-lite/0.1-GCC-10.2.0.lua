help([==[

Description
===========
Fermi-lite is a standalone C library as well as a command-line tool
 for assembling Illumina short reads in regions from 100bp to 10 million bp in size. It
 is largely a light-weight in-memory version of fermikit without generating any intermediate
 files.


More information
================
 - Homepage: https://github.com/lh3/fermi-lite
]==])

whatis([==[Description: Fermi-lite is a standalone C library as well as a command-line tool
 for assembling Illumina short reads in regions from 100bp to 10 million bp in size. It
 is largely a light-weight in-memory version of fermikit without generating any intermediate
 files.]==])
whatis([==[Homepage: https://github.com/lh3/fermi-lite]==])
whatis([==[URL: https://github.com/lh3/fermi-lite]==])

local root = "/app/software/fermi-lite/0.1-GCC-10.2.0"

conflict("fermi-lite")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("binutils/2.35-GCCcore-10.2.0") ) then
    load("binutils/2.35-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFERMIMINLITE", root)
setenv("EBVERSIONFERMIMINLITE", "0.1")
setenv("EBDEVELFERMIMINLITE", pathJoin(root, "logs/fermi-lite-0.1-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
