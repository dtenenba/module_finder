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

local root = "/app/software/Ghostscript/9.56.1-GCCcore-11.3.0"

conflict("Ghostscript")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-11.3.0") ) then
    load("zlib/1.2.12-GCCcore-11.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.3.0") ) then
    load("libpng/1.6.37-GCCcore-11.3.0")
end

if not ( isloaded("freetype/2.12.1-GCCcore-11.3.0") ) then
    load("freetype/2.12.1-GCCcore-11.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.3-GCCcore-11.3.0") ) then
    load("libjpeg-turbo/2.1.3-GCCcore-11.3.0")
end

if not ( isloaded("expat/2.4.8-GCCcore-11.3.0") ) then
    load("expat/2.4.8-GCCcore-11.3.0")
end

if not ( isloaded("GLib/2.72.1-GCCcore-11.3.0") ) then
    load("GLib/2.72.1-GCCcore-11.3.0")
end

if not ( isloaded("cairo/1.17.4-GCCcore-11.3.0") ) then
    load("cairo/1.17.4-GCCcore-11.3.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.3.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.3.0")
end

if not ( isloaded("GTK2/2.24.33-GCCcore-11.3.0") ) then
    load("GTK2/2.24.33-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGHOSTSCRIPT", root)
setenv("EBVERSIONGHOSTSCRIPT", "9.56.1")
setenv("EBDEVELGHOSTSCRIPT", pathJoin(root, "logs/Ghostscript-9.56.1-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
