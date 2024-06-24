help([==[

Description
===========
R is a free software environment for statistical computing
 and graphics.


More information
================
 - Homepage: https://www.r-project.org/


]==])

whatis([==[Description: R is a free software environment for statistical computing
 and graphics.]==])
whatis([==[Homepage: https://www.r-project.org/]==])
whatis([==[URL: https://www.r-project.org/]==])

local root = "/app/software/R/3.6.2-foss-2019b"

conflict("R")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

if not ( isloaded("Mesa/19.1.7-GCCcore-8.3.0") ) then
    load("Mesa/19.1.7-GCCcore-8.3.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-8.3.0") ) then
    load("libGLU/9.0.1-GCCcore-8.3.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-8.3.0") ) then
    load("cairo/1.16.0-GCCcore-8.3.0")
end

if not ( isloaded("libreadline/8.0-GCCcore-8.3.0") ) then
    load("libreadline/8.0-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("SQLite/3.29.0-GCCcore-8.3.0") ) then
    load("SQLite/3.29.0-GCCcore-8.3.0")
end

if not ( isloaded("PCRE/8.43-GCCcore-8.3.0") ) then
    load("PCRE/8.43-GCCcore-8.3.0")
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

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Tk/8.6.9-GCCcore-8.3.0") ) then
    load("Tk/8.6.9-GCCcore-8.3.0")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

if not ( isloaded("GMP/6.1.2-GCCcore-8.3.0") ) then
    load("GMP/6.1.2-GCCcore-8.3.0")
end

if not ( isloaded("NLopt/2.6.1-GCCcore-8.3.0") ) then
    load("NLopt/2.6.1-GCCcore-8.3.0")
end

if not ( isloaded("FFTW/3.3.8-gompi-2019b") ) then
    load("FFTW/3.3.8-gompi-2019b")
end

if not ( isloaded("libsndfile/1.0.28-GCCcore-8.3.0") ) then
    load("libsndfile/1.0.28-GCCcore-8.3.0")
end

if not ( isloaded("ICU/64.2-GCCcore-8.3.0") ) then
    load("ICU/64.2-GCCcore-8.3.0")
end

if not ( isloaded("HDF5/1.10.5-gompi-2019b") ) then
    load("HDF5/1.10.5-gompi-2019b")
end

if not ( isloaded("UDUNITS/2.2.26-GCCcore-8.3.0") ) then
    load("UDUNITS/2.2.26-GCCcore-8.3.0")
end

if not ( isloaded("GSL/2.6-GCC-8.3.0") ) then
    load("GSL/2.6-GCC-8.3.0")
end

if not ( isloaded("ImageMagick/7.0.9-5-GCCcore-8.3.0") ) then
    load("ImageMagick/7.0.9-5-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTR", root)
setenv("EBVERSIONR", "3.6.2")
setenv("EBDEVELR", pathJoin(root, "logs/R-3.6.2-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
