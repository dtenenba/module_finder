help([==[

Description
===========
Standalone C library for assembling Illumina short reads in small regions.


More information
================
 - Homepage: https://github.com/lh3/fermi-lite
]==])

whatis([==[Description: Standalone C library for assembling Illumina short reads in small regions.]==])
whatis([==[Homepage: https://github.com/lh3/fermi-lite]==])
whatis([==[URL: https://github.com/lh3/fermi-lite]==])

local root = "/app/software/fermi-lite/20190320-GCCcore-11.2.0"

conflict("fermi-lite")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFERMIMINLITE", root)
setenv("EBVERSIONFERMIMINLITE", "20190320")
setenv("EBDEVELFERMIMINLITE", pathJoin(root, "logs/fermi-lite-20190320-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
