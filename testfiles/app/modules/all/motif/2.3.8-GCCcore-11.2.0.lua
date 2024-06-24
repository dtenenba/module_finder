help([==[

Description
===========
Motif refers to both a graphical user interface (GUI) specification and the widget toolkit for building
 applications that follow that specification under the X Window System on Unix and other POSIX-compliant systems.
 It was the standard toolkit for the Common Desktop Environment and thus for Unix.


More information
================
 - Homepage: https://motif.ics.com/
]==])

whatis([==[Description: Motif refers to both a graphical user interface (GUI) specification and the widget toolkit for building
 applications that follow that specification under the X Window System on Unix and other POSIX-compliant systems.
 It was the standard toolkit for the Common Desktop Environment and thus for Unix.]==])
whatis([==[Homepage: https://motif.ics.com/]==])
whatis([==[URL: https://motif.ics.com/]==])

local root = "/app/software/motif/2.3.8-GCCcore-11.2.0"

conflict("motif")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("freetype/2.11.0-GCCcore-11.2.0") ) then
    load("freetype/2.11.0-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMOTIF", root)
setenv("EBVERSIONMOTIF", "2.3.8")
setenv("EBDEVELMOTIF", pathJoin(root, "logs/motif-2.3.8-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
