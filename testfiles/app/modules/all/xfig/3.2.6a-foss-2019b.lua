help([==[

Description
===========
Xfig is an interactive drawing tool which runs under X Window System.


More information
================
 - Homepage: http://www.xfig.org/
]==])

whatis([==[Description: Xfig is an interactive drawing tool which runs under X Window System.]==])
whatis([==[Homepage: http://www.xfig.org/]==])
whatis([==[URL: http://www.xfig.org/]==])

local root = "/app/software/xfig/3.2.6a-foss-2019b"

conflict("xfig")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

if not ( isloaded("libXaw3d/1.6.3-GCCcore-8.3.0") ) then
    load("libXaw3d/1.6.3-GCCcore-8.3.0")
end

if not ( isloaded("freetype/2.10.1-GCCcore-8.3.0") ) then
    load("freetype/2.10.1-GCCcore-8.3.0")
end

if not ( isloaded("fontconfig/2.13.1-GCCcore-8.3.0") ) then
    load("fontconfig/2.13.1-GCCcore-8.3.0")
end

if not ( isloaded("Ghostscript/9.50-GCCcore-8.3.0") ) then
    load("Ghostscript/9.50-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXFIG", root)
setenv("EBVERSIONXFIG", "3.2.6a")
setenv("EBDEVELXFIG", pathJoin(root, "logs/xfig-3.2.6a-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
