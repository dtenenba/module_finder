help([==[

Description
===========
Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.


More information
================
 - Homepage: https://ghostscript.com
]==])

whatis([==[Description: Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.]==])
whatis([==[Homepage: https://ghostscript.com]==])
whatis([==[URL: https://ghostscript.com]==])

local root = "/app/software/Ghostscript/10.02.1-GCCcore-13.2.0"

conflict("Ghostscript")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("libpng/1.6.40-GCCcore-13.2.0") ) then
    load("libpng/1.6.40-GCCcore-13.2.0")
end

if not ( isloaded("freetype/2.13.2-GCCcore-13.2.0") ) then
    load("freetype/2.13.2-GCCcore-13.2.0")
end

if not ( isloaded("libjpeg-turbo/3.0.1-GCCcore-13.2.0") ) then
    load("libjpeg-turbo/3.0.1-GCCcore-13.2.0")
end

if not ( isloaded("expat/2.5.0-GCCcore-13.2.0") ) then
    load("expat/2.5.0-GCCcore-13.2.0")
end

if not ( isloaded("GLib/2.78.1-GCCcore-13.2.0") ) then
    load("GLib/2.78.1-GCCcore-13.2.0")
end

if not ( isloaded("cairo/1.18.0-GCCcore-13.2.0") ) then
    load("cairo/1.18.0-GCCcore-13.2.0")
end

if not ( isloaded("LibTIFF/4.6.0-GCCcore-13.2.0") ) then
    load("LibTIFF/4.6.0-GCCcore-13.2.0")
end

if not ( isloaded("GTK3/3.24.39-GCCcore-13.2.0") ) then
    load("GTK3/3.24.39-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGHOSTSCRIPT", root)
setenv("EBVERSIONGHOSTSCRIPT", "10.02.1")
setenv("EBDEVELGHOSTSCRIPT", pathJoin(root, "logs/Ghostscript-10.02.1-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
