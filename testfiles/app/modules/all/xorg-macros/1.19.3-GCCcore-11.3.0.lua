help([==[

Description
===========
X.org macros utilities.


More information
================
 - Homepage: https://cgit.freedesktop.org/xorg/util/macros
]==])

whatis([==[Description: X.org macros utilities.]==])
whatis([==[Homepage: https://cgit.freedesktop.org/xorg/util/macros]==])
whatis([==[URL: https://cgit.freedesktop.org/xorg/util/macros]==])

local root = "/app/software/xorg-macros/1.19.3-GCCcore-11.3.0"

conflict("xorg-macros")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXORGMINMACROS", root)
setenv("EBVERSIONXORGMINMACROS", "1.19.3")
setenv("EBDEVELXORGMINMACROS", pathJoin(root, "logs/xorg-macros-1.19.3-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
