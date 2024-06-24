help([==[

Description
===========
Blosc, an extremely fast, multi-threaded, meta-compressor library


More information
================
 - Homepage: https://www.blosc.org/
]==])

whatis([==[Description: Blosc, an extremely fast, multi-threaded, meta-compressor library]==])
whatis([==[Homepage: https://www.blosc.org/]==])
whatis([==[URL: https://www.blosc.org/]==])

local root = "/app/software/Blosc/1.17.1-GCCcore-8.3.0"

conflict("Blosc")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBLOSC", root)
setenv("EBVERSIONBLOSC", "1.17.1")
setenv("EBDEVELBLOSC", pathJoin(root, "logs/Blosc-1.17.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
