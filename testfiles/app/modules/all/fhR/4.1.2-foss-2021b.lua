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

local root = "/app/software/fhR/4.1.2-foss-2021b"

conflict("fhR")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("R/4.1.2-foss-2021b") ) then
    load("R/4.1.2-foss-2021b")
end

if not ( isloaded("libwebp/1.2.0-GCCcore-11.2.0") ) then
    load("libwebp/1.2.0-GCCcore-11.2.0")
end

if not ( isloaded("PostgreSQL/13.4-GCCcore-11.2.0") ) then
    load("PostgreSQL/13.4-GCCcore-11.2.0")
end

if not ( isloaded("JAGS/4.3.0-foss-2021b") ) then
    load("JAGS/4.3.0-foss-2021b")
end

if not ( isloaded("GLPK/5.0-GCCcore-11.2.0") ) then
    load("GLPK/5.0-GCCcore-11.2.0")
end

if not ( isloaded("poppler/22.01.0-GCC-11.2.0") ) then
    load("poppler/22.01.0-GCC-11.2.0")
end

if not ( isloaded("Graphviz/2.50.0-GCCcore-11.2.0") ) then
    load("Graphviz/2.50.0-GCCcore-11.2.0")
end

if not ( isloaded("NLopt/2.7.0-GCCcore-11.2.0") ) then
    load("NLopt/2.7.0-GCCcore-11.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-11.2.0") ) then
    load("libGLU/9.0.2-GCCcore-11.2.0")
end

if not ( isloaded("Mesa/21.1.7-GCCcore-11.2.0") ) then
    load("Mesa/21.1.7-GCCcore-11.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-11.2.0") ) then
    load("cairo/1.16.0-GCCcore-11.2.0")
end

if not ( isloaded("ICU/69.1-GCCcore-11.2.0") ) then
    load("ICU/69.1-GCCcore-11.2.0")
end

if not ( isloaded("netCDF/4.8.1-gompi-2021b") ) then
    load("netCDF/4.8.1-gompi-2021b")
end

if not ( isloaded("ZeroMQ/4.3.4-GCCcore-11.2.0") ) then
    load("ZeroMQ/4.3.4-GCCcore-11.2.0")
end

if not ( isloaded("SYMPHONY/5.6.18-foss-2021b") ) then
    load("SYMPHONY/5.6.18-foss-2021b")
end

if not ( isloaded("igraph/0.9.5-foss-2021b") ) then
    load("igraph/0.9.5-foss-2021b")
end

if not ( isloaded("OpenJPEG/2.4.0-GCCcore-11.2.0") ) then
    load("OpenJPEG/2.4.0-GCCcore-11.2.0")
end

if not ( isloaded("UnZip/6.0-GCCcore-11.2.0") ) then
    load("UnZip/6.0-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("NSS/3.69-GCCcore-11.2.0") ) then
    load("NSS/3.69-GCCcore-11.2.0")
end

if not ( isloaded("unixODBC/2.3.9-GCC-11.2.0") ) then
    load("unixODBC/2.3.9-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFHR", root)
setenv("EBVERSIONFHR", "4.1.2")
setenv("EBDEVELFHR", pathJoin(root, "logs/fhR-4.1.2-foss-2021b-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.7.2
