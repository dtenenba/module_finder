help([==[

Description
===========
GD is an open source code library for the dynamic creation of images by programmers.


More information
================
 - Homepage: https://libgd.github.io/
]==])

whatis([==[Description: GD is an open source code library for the dynamic creation of images by programmers.]==])
whatis([==[Homepage: https://libgd.github.io/]==])
whatis([==[URL: https://libgd.github.io/]==])

local root = "/app/software/libgd/2.3.0-GCCcore-10.2.0"

conflict("libgd")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("fontconfig/2.13.92-GCCcore-10.2.0") ) then
    load("fontconfig/2.13.92-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.2.0") ) then
    load("libpng/1.6.37-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGD", root)
setenv("EBVERSIONLIBGD", "2.3.0")
setenv("EBDEVELLIBGD", pathJoin(root, "logs/libgd-2.3.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
