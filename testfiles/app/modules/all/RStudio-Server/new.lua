help([==[

Description
===========
This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.

The server can be started with:
  rserver --server-daemonize=0 --www-port=8787

If you need a database config one can be created with:
  MYTMP=`mktemp -d` && echo -e "provider=sqlite\ndirectory=${MYTMP}/sqlite" > "${MYTMP}/db.conf"
and then used with:
  rserver ... --database-config-file="${MYTMP}/db.conf"


More information
================
 - Homepage: https://www.rstudio.com/
]==])

whatis([==[Description: This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.

The server can be started with:
  rserver --server-daemonize=0 --www-port=8787

If you need a database config one can be created with:
  MYTMP=`mktemp -d` && echo -e "provider=sqlite\ndirectory=${MYTMP}/sqlite" > "${MYTMP}/db.conf"
and then used with:
  rserver ... --database-config-file="${MYTMP}/db.conf"
]==])
whatis([==[Homepage: https://www.rstudio.com/]==])
whatis([==[URL: https://www.rstudio.com/]==])

local root = "/app/software/RStudio-Server/2023.12.1+402-foss-2022b-Java-11-R-4.3.1"

conflict("RStudio-Server")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Boost/1.83.0-GCC-12.2.0") ) then
    load("Boost/1.83.0-GCC-12.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("R/4.3.1-gfbf-2022b") ) then
    load("R/4.3.1-gfbf-2022b")
end

if not ( isloaded("SOCI/4.0.3-GCC-12.2.0-Boost-1.83.0") ) then
    load("SOCI/4.0.3-GCC-12.2.0-Boost-1.83.0")
end

if not ( isloaded("yaml-cpp/0.7.0-GCCcore-12.2.0") ) then
    load("yaml-cpp/0.7.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSTUDIOMINSERVER", root)
setenv("EBVERSIONRSTUDIOMINSERVER", "2023.12.1+402")
setenv("EBDEVELRSTUDIOMINSERVER", pathJoin(root, "logs/RStudio-Server-2023.12.1+402-foss-2022b-Java-11-R-4.3.1-easybuild-devel"))

-- Built with EasyBuild version 4.9.1

if not ( isloaded("R-Tidyverse/4.3.1-gfbf-2022b") ) then
    load("R-Tidyverse/4.3.1-gfbf-2022b")
end

if not ( isloaded("libwebp/1.3.0-GCCcore-12.2.0") ) then
    load("libwebp/1.3.0-GCCcore-12.2.0")
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

local fhroot = "/app/software/fhR/4.3.1-foss-2022b"
prepend_path("CMAKE_PREFIX_PATH", fhroot)
prepend_path("R_LIBS_SITE", fhroot)
-- Built with EasyBuild version 4.9.1
