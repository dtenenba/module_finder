help([==[

Description
===========
Argtable is an ANSI C library for parsing GNU style
 command line options with a minimum of fuss.


More information
================
 - Homepage: http://argtable.sourceforge.net/
]==])

whatis([==[Description:  Argtable is an ANSI C library for parsing GNU style
 command line options with a minimum of fuss. ]==])
whatis([==[Homepage: http://argtable.sourceforge.net/]==])
whatis([==[URL: http://argtable.sourceforge.net/]==])

local root = "/app/software/argtable/2.13-GCCcore-8.3.0"

conflict("argtable")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARGTABLE", root)
setenv("EBVERSIONARGTABLE", "2.13")
setenv("EBDEVELARGTABLE", pathJoin(root, "logs/argtable-2.13-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
