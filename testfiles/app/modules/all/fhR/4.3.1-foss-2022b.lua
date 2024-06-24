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

local root = "/app/software/fhR/4.3.1-foss-2022b"

conflict("fhR")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("R/4.3.1-gfbf-2022b") ) then
    load("R/4.3.1-gfbf-2022b")
end

if not ( isloaded("R-Tidyverse/4.3.1-gfbf-2022b") ) then
    load("R-Tidyverse/4.3.1-gfbf-2022b")
end

if not ( isloaded("libwebp/1.3.0-GCCcore-12.2.0") ) then
    load("libwebp/1.3.0-GCCcore-12.2.0")
end

if not ( isloaded("PostgreSQL/15.2-GCCcore-12.2.0") ) then
    load("PostgreSQL/15.2-GCCcore-12.2.0")
end

if not ( isloaded("JAGS/4.3.2-foss-2022b") ) then
    load("JAGS/4.3.2-foss-2022b")
end

if not ( isloaded("GLPK/5.0-GCCcore-12.2.0") ) then
    load("GLPK/5.0-GCCcore-12.2.0")
end

if not ( isloaded("poppler/23.01.0-GCCcore-12.2.0") ) then
    load("poppler/23.01.0-GCCcore-12.2.0")
end

if not ( isloaded("Graphviz/7.0.6-GCCcore-12.2.0") ) then
    load("Graphviz/7.0.6-GCCcore-12.2.0")
end

if not ( isloaded("NLopt/2.7.1-GCCcore-12.2.0") ) then
    load("NLopt/2.7.1-GCCcore-12.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-12.2.0") ) then
    load("libGLU/9.0.2-GCCcore-12.2.0")
end

if not ( isloaded("ICU/72.1-GCCcore-12.2.0") ) then
    load("ICU/72.1-GCCcore-12.2.0")
end

if not ( isloaded("netCDF/4.9.0-gompi-2022b") ) then
    load("netCDF/4.9.0-gompi-2022b")
end

if not ( isloaded("ZeroMQ/4.3.4-GCCcore-12.2.0") ) then
    load("ZeroMQ/4.3.4-GCCcore-12.2.0")
end

if not ( isloaded("SYMPHONY/5.7.1-foss-2022b") ) then
    load("SYMPHONY/5.7.1-foss-2022b")
end

if not ( isloaded("igraph/0.10.6-foss-2022b") ) then
    load("igraph/0.10.6-foss-2022b")
end

if not ( isloaded("OpenJPEG/2.5.0-GCCcore-12.2.0") ) then
    load("OpenJPEG/2.5.0-GCCcore-12.2.0")
end

if not ( isloaded("UnZip/6.0-GCCcore-12.2.0") ) then
    load("UnZip/6.0-GCCcore-12.2.0")
end

if not ( isloaded("NSS/3.85-GCCcore-12.2.0") ) then
    load("NSS/3.85-GCCcore-12.2.0")
end

if not ( isloaded("ImageMagick/7.1.0-53-GCCcore-12.2.0") ) then
    load("ImageMagick/7.1.0-53-GCCcore-12.2.0")
end

if not ( isloaded("GSL/2.7-GCC-12.2.0") ) then
    load("GSL/2.7-GCC-12.2.0")
end

if not ( isloaded("UDUNITS/2.2.28-GCCcore-12.2.0") ) then
    load("UDUNITS/2.2.28-GCCcore-12.2.0")
end

if not ( isloaded("FFTW/3.3.10-GCC-12.2.0") ) then
    load("FFTW/3.3.10-GCC-12.2.0")
end

if not ( isloaded("GDAL/3.6.2-foss-2022b") ) then
    load("GDAL/3.6.2-foss-2022b")
end

if not ( isloaded("MPFR/4.2.0-GCCcore-12.2.0") ) then
    load("MPFR/4.2.0-GCCcore-12.2.0")
end

if not ( isloaded("HDF5/1.14.0-gompi-2022b") ) then
    load("HDF5/1.14.0-gompi-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFHR", root)
setenv("EBVERSIONFHR", "4.3.1")
setenv("EBDEVELFHR", pathJoin(root, "logs/fhR-4.3.1-foss-2022b-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.9.1
