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

local root = "/app/software/fhR/4.0.4-foss-2020b"

conflict("fhR")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("R/4.0.4-foss-2020b") ) then
    load("R/4.0.4-foss-2020b")
end

if not ( isloaded("libwebp/1.1.0-GCCcore-10.2.0") ) then
    load("libwebp/1.1.0-GCCcore-10.2.0")
end

if not ( isloaded("JAGS/4.3.0-foss-2020b") ) then
    load("JAGS/4.3.0-foss-2020b")
end

if not ( isloaded("GLPK/4.65-GCCcore-10.2.0") ) then
    load("GLPK/4.65-GCCcore-10.2.0")
end

if not ( isloaded("poppler/20.12.1-foss-2020b") ) then
    load("poppler/20.12.1-foss-2020b")
end

if not ( isloaded("NLopt/2.6.2-GCCcore-10.2.0") ) then
    load("NLopt/2.6.2-GCCcore-10.2.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-10.2.0") ) then
    load("libGLU/9.0.1-GCCcore-10.2.0")
end

if not ( isloaded("Mesa/20.2.1-GCCcore-10.2.0") ) then
    load("Mesa/20.2.1-GCCcore-10.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-10.2.0") ) then
    load("cairo/1.16.0-GCCcore-10.2.0")
end

if not ( isloaded("ICU/67.1-GCCcore-10.2.0") ) then
    load("ICU/67.1-GCCcore-10.2.0")
end

if not ( isloaded("netCDF/4.7.4-gompi-2020b") ) then
    load("netCDF/4.7.4-gompi-2020b")
end

if not ( isloaded("ZeroMQ/4.3.3-GCCcore-10.2.0") ) then
    load("ZeroMQ/4.3.3-GCCcore-10.2.0")
end

if not ( isloaded("SYMPHONY/5.6.17-GCCcore-10.2.0") ) then
    load("SYMPHONY/5.6.17-GCCcore-10.2.0")
end

if not ( isloaded("igraph/0.8.5-foss-2020b") ) then
    load("igraph/0.8.5-foss-2020b")
end

if not ( isloaded("OpenJPEG/2.4.0-GCCcore-10.2.0") ) then
    load("OpenJPEG/2.4.0-GCCcore-10.2.0")
end

if not ( isloaded("UnZip/6.0-GCCcore-10.2.0") ) then
    load("UnZip/6.0-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("NSS/3.57-GCCcore-10.2.0") ) then
    load("NSS/3.57-GCCcore-10.2.0")
end

if not ( isloaded("librsvg/2.50.2-GCC-10.2.0") ) then
    load("librsvg/2.50.2-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFHR", root)
setenv("EBVERSIONFHR", "4.0.4")
setenv("EBDEVELFHR", pathJoin(root, "logs/fhR-4.0.4-foss-2020b-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.3.4
