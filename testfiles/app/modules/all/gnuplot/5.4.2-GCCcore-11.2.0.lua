help([==[

Description
===========
Portable interactive, function plotting utility


More information
================
 - Homepage: http://gnuplot.sourceforge.net
]==])

whatis([==[Description: Portable interactive, function plotting utility]==])
whatis([==[Homepage: http://gnuplot.sourceforge.net]==])
whatis([==[URL: http://gnuplot.sourceforge.net]==])

local root = "/app/software/gnuplot/5.4.2-GCCcore-11.2.0"

conflict("gnuplot")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-11.2.0") ) then
    load("ncurses/6.2-GCCcore-11.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-11.2.0") ) then
    load("cairo/1.16.0-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("libgd/2.3.3-GCCcore-11.2.0") ) then
    load("libgd/2.3.3-GCCcore-11.2.0")
end

if not ( isloaded("Pango/1.48.8-GCCcore-11.2.0") ) then
    load("Pango/1.48.8-GCCcore-11.2.0")
end

if not ( isloaded("libcerf/1.17-GCCcore-11.2.0") ) then
    load("libcerf/1.17-GCCcore-11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

if not ( isloaded("Qt5/5.15.2-GCCcore-11.2.0") ) then
    load("Qt5/5.15.2-GCCcore-11.2.0")
end

if not ( isloaded("Lua/5.4.3-GCCcore-11.2.0") ) then
    load("Lua/5.4.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGNUPLOT", root)
setenv("EBVERSIONGNUPLOT", "5.4.2")
setenv("EBDEVELGNUPLOT", pathJoin(root, "logs/gnuplot-5.4.2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
