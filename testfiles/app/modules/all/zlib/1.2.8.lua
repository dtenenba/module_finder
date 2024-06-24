help([==[

Description
===========
zlib is designed to be a free, general-purpose, legally unencumbered -- that is,
 not covered by any patents -- lossless data-compression library for use on virtually any
 computer hardware and operating system.


More information
================
 - Homepage: http://www.zlib.net/
]==])

whatis([==[Description: zlib is designed to be a free, general-purpose, legally unencumbered -- that is,
 not covered by any patents -- lossless data-compression library for use on virtually any
 computer hardware and operating system.]==])
whatis([==[Homepage: http://www.zlib.net/]==])
whatis([==[URL: http://www.zlib.net/]==])

local root = "/app/software/zlib/1.2.8"

conflict("zlib")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTZLIB", root)
setenv("EBVERSIONZLIB", "1.2.8")
setenv("EBDEVELZLIB", pathJoin(root, "logs/zlib-1.2.8-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
