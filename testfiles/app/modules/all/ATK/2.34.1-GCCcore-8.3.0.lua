help([==[

Description
===========
ATK provides the set of accessibility interfaces that are implemented by other
 toolkits and applications. Using the ATK interfaces, accessibility tools have
 full access to view and control running applications.


More information
================
 - Homepage: https://developer.gnome.org/atk/
]==])

whatis([==[Description: 
 ATK provides the set of accessibility interfaces that are implemented by other
 toolkits and applications. Using the ATK interfaces, accessibility tools have
 full access to view and control running applications.
]==])
whatis([==[Homepage: https://developer.gnome.org/atk/]==])
whatis([==[URL: https://developer.gnome.org/atk/]==])

local root = "/app/software/ATK/2.34.1-GCCcore-8.3.0"

conflict("ATK")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("GLib/2.62.0-GCCcore-8.3.0") ) then
    load("GLib/2.62.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTATK", root)
setenv("EBVERSIONATK", "2.34.1")
setenv("EBDEVELATK", pathJoin(root, "logs/ATK-2.34.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
