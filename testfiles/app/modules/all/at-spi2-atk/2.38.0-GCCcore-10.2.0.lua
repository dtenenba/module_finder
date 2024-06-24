help([==[

Description
===========
AT-SPI 2 toolkit bridge


More information
================
 - Homepage: https://wiki.gnome.org/Accessibility
]==])

whatis([==[Description: AT-SPI 2 toolkit bridge]==])
whatis([==[Homepage: https://wiki.gnome.org/Accessibility]==])
whatis([==[URL: https://wiki.gnome.org/Accessibility]==])

local root = "/app/software/at-spi2-atk/2.38.0-GCCcore-10.2.0"

conflict("at-spi2-atk")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("GLib/2.66.1-GCCcore-10.2.0") ) then
    load("GLib/2.66.1-GCCcore-10.2.0")
end

if not ( isloaded("DBus/1.13.18-GCCcore-10.2.0") ) then
    load("DBus/1.13.18-GCCcore-10.2.0")
end

if not ( isloaded("at-spi2-core/2.38.0-GCCcore-10.2.0") ) then
    load("at-spi2-core/2.38.0-GCCcore-10.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

if not ( isloaded("ATK/2.36.0-GCCcore-10.2.0") ) then
    load("ATK/2.36.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTATMINSPI2MINATK", root)
setenv("EBVERSIONATMINSPI2MINATK", "2.38.0")
setenv("EBDEVELATMINSPI2MINATK", pathJoin(root, "logs/at-spi2-atk-2.38.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
