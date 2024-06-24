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

local root = "/app/software/R/4.3.0-foss-2022b"

conflict("R")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("X11/20221110-GCCcore-12.2.0") ) then
    load("X11/20221110-GCCcore-12.2.0")
end

if not ( isloaded("Mesa/22.2.4-GCCcore-12.2.0") ) then
    load("Mesa/22.2.4-GCCcore-12.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-12.2.0") ) then
    load("libGLU/9.0.2-GCCcore-12.2.0")
end

if not ( isloaded("cairo/1.17.4-GCCcore-12.2.0") ) then
    load("cairo/1.17.4-GCCcore-12.2.0")
end

if not ( isloaded("libreadline/8.2-GCCcore-12.2.0") ) then
    load("libreadline/8.2-GCCcore-12.2.0")
end

if not ( isloaded("ncurses/6.3-GCCcore-12.2.0") ) then
    load("ncurses/6.3-GCCcore-12.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.2.0") ) then
    load("bzip2/1.0.8-GCCcore-12.2.0")
end

if not ( isloaded("XZ/5.2.7-GCCcore-12.2.0") ) then
    load("XZ/5.2.7-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("SQLite/3.39.4-GCCcore-12.2.0") ) then
    load("SQLite/3.39.4-GCCcore-12.2.0")
end

if not ( isloaded("PCRE2/10.40-GCCcore-12.2.0") ) then
    load("PCRE2/10.40-GCCcore-12.2.0")
end

if not ( isloaded("libpng/1.6.38-GCCcore-12.2.0") ) then
    load("libpng/1.6.38-GCCcore-12.2.0")
end

if not ( isloaded("libjpeg-turbo/2.1.4-GCCcore-12.2.0") ) then
    load("libjpeg-turbo/2.1.4-GCCcore-12.2.0")
end

if not ( isloaded("LibTIFF/4.4.0-GCCcore-12.2.0") ) then
    load("LibTIFF/4.4.0-GCCcore-12.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Tk/8.6.12-GCCcore-12.2.0") ) then
    load("Tk/8.6.12-GCCcore-12.2.0")
end

if not ( isloaded("cURL/7.86.0-GCCcore-12.2.0") ) then
    load("cURL/7.86.0-GCCcore-12.2.0")
end

if not ( isloaded("libxml2/2.10.3-GCCcore-12.2.0") ) then
    load("libxml2/2.10.3-GCCcore-12.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-12.2.0") ) then
    load("GMP/6.2.1-GCCcore-12.2.0")
end

if not ( isloaded("NLopt/2.7.1-GCCcore-12.2.0") ) then
    load("NLopt/2.7.1-GCCcore-12.2.0")
end

if not ( isloaded("FFTW/3.3.10-GCC-12.2.0") ) then
    load("FFTW/3.3.10-GCC-12.2.0")
end

if not ( isloaded("libsndfile/1.2.0-GCCcore-12.2.0") ) then
    load("libsndfile/1.2.0-GCCcore-12.2.0")
end

if not ( isloaded("ICU/72.1-GCCcore-12.2.0") ) then
    load("ICU/72.1-GCCcore-12.2.0")
end

if not ( isloaded("HDF5/1.14.0-gompi-2022b") ) then
    load("HDF5/1.14.0-gompi-2022b")
end

if not ( isloaded("UDUNITS/2.2.28-GCCcore-12.2.0") ) then
    load("UDUNITS/2.2.28-GCCcore-12.2.0")
end

if not ( isloaded("GSL/2.7-GCC-12.2.0") ) then
    load("GSL/2.7-GCC-12.2.0")
end

if not ( isloaded("ImageMagick/7.1.0-53-GCCcore-12.2.0") ) then
    load("ImageMagick/7.1.0-53-GCCcore-12.2.0")
end

if not ( isloaded("GLPK/5.0-GCCcore-12.2.0") ) then
    load("GLPK/5.0-GCCcore-12.2.0")
end

if not ( isloaded("nodejs/18.12.1-GCCcore-12.2.0") ) then
    load("nodejs/18.12.1-GCCcore-12.2.0")
end

if not ( isloaded("GDAL/3.6.2-foss-2022b") ) then
    load("GDAL/3.6.2-foss-2022b")
end

if not ( isloaded("MPFR/4.2.0-GCCcore-12.2.0") ) then
    load("MPFR/4.2.0-GCCcore-12.2.0")
end

if not ( isloaded("libgit2/1.5.0-GCCcore-12.2.0") ) then
    load("libgit2/1.5.0-GCCcore-12.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTR", root)
setenv("EBVERSIONR", "4.3.0")
setenv("EBDEVELR", pathJoin(root, "logs/R-4.3.0-foss-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
setenv("RETICULATE_PYTHON", "/app/software/Python/3.10.8-GCCcore-12.2.0/bin/python")
