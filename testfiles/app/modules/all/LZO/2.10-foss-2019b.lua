help([==[

Description
===========
Portable lossless data compression library


More information
================
 - Homepage: http://www.oberhumer.com/opensource/lzo/
]==])

whatis([==[Description: Portable lossless data compression library]==])
whatis([==[Homepage: http://www.oberhumer.com/opensource/lzo/]==])
whatis([==[URL: http://www.oberhumer.com/opensource/lzo/]==])

local root = "/app/software/LZO/2.10-foss-2019b"

conflict("LZO")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLZO", root)
setenv("EBVERSIONLZO", "2.10")
setenv("EBDEVELLZO", pathJoin(root, "logs/LZO-2.10-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
