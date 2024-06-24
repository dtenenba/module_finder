help([==[

Description
===========
Assistive Technology Service Provider Interface.


More information
================
 - Homepage: https://wiki.gnome.org/Accessibility
]==])

whatis([==[Description: 
 Assistive Technology Service Provider Interface.
]==])
whatis([==[Homepage: https://wiki.gnome.org/Accessibility]==])
whatis([==[URL: https://wiki.gnome.org/Accessibility]==])

local root = "/app/software/at-spi2-core/2.46.0-GCCcore-12.2.0"

conflict("at-spi2-core")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("GLib/2.75.0-GCCcore-12.2.0") ) then
    load("GLib/2.75.0-GCCcore-12.2.0")
end

if not ( isloaded("DBus/1.15.2-GCCcore-12.2.0") ) then
    load("DBus/1.15.2-GCCcore-12.2.0")
end

if not ( isloaded("X11/20221110-GCCcore-12.2.0") ) then
    load("X11/20221110-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTATMINSPI2MINCORE", root)
setenv("EBVERSIONATMINSPI2MINCORE", "2.46.0")
setenv("EBDEVELATMINSPI2MINCORE", pathJoin(root, "logs/at-spi2-core-2.46.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
