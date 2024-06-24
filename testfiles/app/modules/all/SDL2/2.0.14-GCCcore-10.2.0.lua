help([==[

Description
===========
SDL: Simple DirectMedia Layer, a cross-platform multimedia library


More information
================
 - Homepage: https://www.libsdl.org/
]==])

whatis([==[Description: SDL: Simple DirectMedia Layer, a cross-platform multimedia library]==])
whatis([==[Homepage: https://www.libsdl.org/]==])
whatis([==[URL: https://www.libsdl.org/]==])

local root = "/app/software/SDL2/2.0.14-GCCcore-10.2.0"

conflict("SDL2")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("X11/20201008-GCCcore-10.2.0") ) then
    load("X11/20201008-GCCcore-10.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSDL2", root)
setenv("EBVERSIONSDL2", "2.0.14")
setenv("EBDEVELSDL2", pathJoin(root, "logs/SDL2-2.0.14-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
