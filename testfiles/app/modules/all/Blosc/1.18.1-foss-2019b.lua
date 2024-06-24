help([==[

Description
===========
Blosc, an extremely fast, multi-threaded, meta-compressor library


More information
================
 - Homepage: http://www.blosc.org/
]==])

whatis([==[Description: Blosc, an extremely fast, multi-threaded, meta-compressor library]==])
whatis([==[Homepage: http://www.blosc.org/]==])
whatis([==[URL: http://www.blosc.org/]==])

local root = "/app/software/Blosc/1.18.1-foss-2019b"

conflict("Blosc")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBLOSC", root)
setenv("EBVERSIONBLOSC", "1.18.1")
setenv("EBDEVELBLOSC", pathJoin(root, "logs/Blosc-1.18.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
