help([==[

Description
===========
OpenSlide is a C library that provides a simple interface to
read whole-slide images (also known as virtual slides).


More information
================
 - Homepage: https://openslide.org/
]==])

whatis([==[Description: OpenSlide is a C library that provides a simple interface to
read whole-slide images (also known as virtual slides).]==])
whatis([==[Homepage: https://openslide.org/]==])
whatis([==[URL: https://openslide.org/]==])

local root = "/app/software/OpenSlide/3.4.1-GCCcore-12.3.0-largefiles"

conflict("OpenSlide")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("libpng/1.6.39-GCCcore-12.3.0") ) then
    load("libpng/1.6.39-GCCcore-12.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.5.1-GCCcore-12.3.0") ) then
    load("libjpeg-turbo/2.1.5.1-GCCcore-12.3.0")
end

if not ( isloaded("LibTIFF/4.5.0-GCCcore-12.3.0") ) then
    load("LibTIFF/4.5.0-GCCcore-12.3.0")
end

if not ( isloaded("OpenJPEG/2.5.0-GCCcore-12.3.0") ) then
    load("OpenJPEG/2.5.0-GCCcore-12.3.0")
end

if not ( isloaded("libxml2/2.11.4-GCCcore-12.3.0") ) then
    load("libxml2/2.11.4-GCCcore-12.3.0")
end

if not ( isloaded("SQLite/3.42.0-GCCcore-12.3.0") ) then
    load("SQLite/3.42.0-GCCcore-12.3.0")
end

if not ( isloaded("cairo/1.17.8-GCCcore-12.3.0") ) then
    load("cairo/1.17.8-GCCcore-12.3.0")
end

if not ( isloaded("Gdk-Pixbuf/2.42.10-GCCcore-12.3.0") ) then
    load("Gdk-Pixbuf/2.42.10-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENSLIDE", root)
setenv("EBVERSIONOPENSLIDE", "3.4.1")
setenv("EBDEVELOPENSLIDE", pathJoin(root, "logs/OpenSlide-3.4.1-GCCcore-12.3.0-largefiles-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
