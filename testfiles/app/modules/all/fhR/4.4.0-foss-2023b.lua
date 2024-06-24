help([==[

Description
===========
R is a free software environment for statistical computing and graphics.


More information
================
 - Homepage: http://www.r-project.org/


]==])

whatis([==[Description: R is a free software environment for statistical computing and graphics.]==])
whatis([==[Homepage: http://www.r-project.org/]==])
whatis([==[URL: http://www.r-project.org/]==])

local root = "/app/software/fhR/4.4.0-foss-2023b"

conflict("fhR")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("R/4.4.0-gfbf-2023b") ) then
    load("R/4.4.0-gfbf-2023b")
end

if not ( isloaded("R-Tidyverse/4.4.0-gfbf-2023b") ) then
    load("R-Tidyverse/4.4.0-gfbf-2023b")
end

if not ( isloaded("libwebp/1.3.2-GCCcore-13.2.0") ) then
    load("libwebp/1.3.2-GCCcore-13.2.0")
end

if not ( isloaded("JAGS/4.3.2-foss-2023b") ) then
    load("JAGS/4.3.2-foss-2023b")
end

if not ( isloaded("GLPK/5.0-GCCcore-13.2.0") ) then
    load("GLPK/5.0-GCCcore-13.2.0")
end

if not ( isloaded("poppler/24.03.0-GCC-13.2.0") ) then
    load("poppler/24.03.0-GCC-13.2.0")
end

if not ( isloaded("Graphviz/10.0.1-GCCcore-13.2.0") ) then
    load("Graphviz/10.0.1-GCCcore-13.2.0")
end

if not ( isloaded("NLopt/2.7.1-GCCcore-13.2.0") ) then
    load("NLopt/2.7.1-GCCcore-13.2.0")
end

if not ( isloaded("libGLU/9.0.3-GCCcore-13.2.0") ) then
    load("libGLU/9.0.3-GCCcore-13.2.0")
end

if not ( isloaded("ICU/74.1-GCCcore-13.2.0") ) then
    load("ICU/74.1-GCCcore-13.2.0")
end

if not ( isloaded("netCDF/4.9.2-gompi-2023b") ) then
    load("netCDF/4.9.2-gompi-2023b")
end

if not ( isloaded("ZeroMQ/4.3.5-GCCcore-13.2.0") ) then
    load("ZeroMQ/4.3.5-GCCcore-13.2.0")
end

if not ( isloaded("SYMPHONY/5.7.2-foss-2023b") ) then
    load("SYMPHONY/5.7.2-foss-2023b")
end

if not ( isloaded("igraph/0.10.10-foss-2023b") ) then
    load("igraph/0.10.10-foss-2023b")
end

if not ( isloaded("OpenJPEG/2.5.0-GCCcore-13.2.0") ) then
    load("OpenJPEG/2.5.0-GCCcore-13.2.0")
end

if not ( isloaded("UnZip/6.0-GCCcore-13.2.0") ) then
    load("UnZip/6.0-GCCcore-13.2.0")
end

if not ( isloaded("NSS/3.94-GCCcore-13.2.0") ) then
    load("NSS/3.94-GCCcore-13.2.0")
end

if not ( isloaded("ImageMagick/7.1.1-32-GCCcore-13.2.0") ) then
    load("ImageMagick/7.1.1-32-GCCcore-13.2.0")
end

if not ( isloaded("GSL/2.7-GCC-13.2.0") ) then
    load("GSL/2.7-GCC-13.2.0")
end

if not ( isloaded("UDUNITS/2.2.28-GCCcore-13.2.0") ) then
    load("UDUNITS/2.2.28-GCCcore-13.2.0")
end

if not ( isloaded("FFTW/3.3.10-GCC-13.2.0") ) then
    load("FFTW/3.3.10-GCC-13.2.0")
end

if not ( isloaded("GDAL/3.8.4-foss-2023b") ) then
    load("GDAL/3.8.4-foss-2023b")
end

if not ( isloaded("MPFR/4.2.1-GCCcore-13.2.0") ) then
    load("MPFR/4.2.1-GCCcore-13.2.0")
end

if not ( isloaded("librsvg/2.58.0-GCCcore-13.2.0") ) then
    load("librsvg/2.58.0-GCCcore-13.2.0")
end

if not ( isloaded("protobuf/25.3-GCCcore-13.2.0") ) then
    load("protobuf/25.3-GCCcore-13.2.0")
end

if not ( isloaded("unixODBC/2.3.12-GCC-13.2.0") ) then
    load("unixODBC/2.3.12-GCC-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFHR", root)
setenv("EBVERSIONFHR", "4.4.0")
setenv("EBDEVELFHR", pathJoin(root, "logs/fhR-4.4.0-foss-2023b-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.9.1
setenv("RETICULATE_PYTHON", "/app/software/Python/3.11.5-GCCcore-13.2.0/bin/python")
