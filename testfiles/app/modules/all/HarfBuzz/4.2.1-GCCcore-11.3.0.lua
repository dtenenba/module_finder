help([==[

Description
===========
HarfBuzz is an OpenType text shaping engine.


More information
================
 - Homepage: https://www.freedesktop.org/wiki/Software/HarfBuzz
]==])

whatis([==[Description: HarfBuzz is an OpenType text shaping engine.]==])
whatis([==[Homepage: https://www.freedesktop.org/wiki/Software/HarfBuzz]==])
whatis([==[URL: https://www.freedesktop.org/wiki/Software/HarfBuzz]==])

local root = "/app/software/HarfBuzz/4.2.1-GCCcore-11.3.0"

conflict("HarfBuzz")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("GLib/2.72.1-GCCcore-11.3.0") ) then
    load("GLib/2.72.1-GCCcore-11.3.0")
end

if not ( isloaded("ICU/71.1-GCCcore-11.3.0") ) then
    load("ICU/71.1-GCCcore-11.3.0")
end

if not ( isloaded("cairo/1.17.4-GCCcore-11.3.0") ) then
    load("cairo/1.17.4-GCCcore-11.3.0")
end

if not ( isloaded("freetype/2.12.1-GCCcore-11.3.0") ) then
    load("freetype/2.12.1-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHARFBUZZ", root)
setenv("EBVERSIONHARFBUZZ", "4.2.1")
setenv("EBDEVELHARFBUZZ", pathJoin(root, "logs/HarfBuzz-4.2.1-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
