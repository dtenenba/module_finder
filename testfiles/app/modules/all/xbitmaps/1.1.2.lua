help([==[

Description
===========
provides bitmaps for x


More information
================
 - Homepage: http://www.freedesktop.org/wiki/Software/xlibs
]==])

whatis([==[Description: provides bitmaps for x]==])
whatis([==[Homepage: http://www.freedesktop.org/wiki/Software/xlibs]==])

local root = "/app/software/xbitmaps/1.1.2"

conflict("xbitmaps")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
setenv("EBROOTXBITMAPS", root)
setenv("EBVERSIONXBITMAPS", "1.1.2")
setenv("EBDEVELXBITMAPS", pathJoin(root, "/app/logs/xbitmaps-1.1.2-easybuild-devel"))

-- Built with EasyBuild version 3.8.0
