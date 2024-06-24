help([==[

Description
===========
Portable lossless data compression library


More information
================
 - Homepage: https://www.oberhumer.com/opensource/lzo/
]==])

whatis([==[Description: Portable lossless data compression library]==])
whatis([==[Homepage: https://www.oberhumer.com/opensource/lzo/]==])
whatis([==[URL: https://www.oberhumer.com/opensource/lzo/]==])

local root = "/app/software/LZO/2.10-GCCcore-12.2.0"

conflict("LZO")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLZO", root)
setenv("EBVERSIONLZO", "2.10")
setenv("EBDEVELLZO", pathJoin(root, "logs/LZO-2.10-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
