help([==[

Description
===========
x265 is a free software library and application for encoding video streams
 into the H.265 AVC compression format, and is released under the terms of
 the GNU GPL.


More information
================
 - Homepage: https://x265.org/
]==])

whatis([==[Description: 
 x265 is a free software library and application for encoding video streams
 into the H.265 AVC compression format, and is released under the terms of
 the GNU GPL.
]==])
whatis([==[Homepage: https://x265.org/]==])
whatis([==[URL: https://x265.org/]==])

local root = "/app/software/x265/3.5-GCCcore-11.2.0"

conflict("x265")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTX265", root)
setenv("EBVERSIONX265", "3.5")
setenv("EBDEVELX265", pathJoin(root, "logs/x265-3.5-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
