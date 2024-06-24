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

local root = "/app/software/fhR/4.0.2-foss-2019b"

conflict("fhR")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

if not ( isloaded("libwebp/1.0.3-GCCcore-8.3.0") ) then
    load("libwebp/1.0.3-GCCcore-8.3.0")
end

if not ( isloaded("PostgreSQL/10.3-foss-2019b") ) then
    load("PostgreSQL/10.3-foss-2019b")
end

if not ( isloaded("JAGS/4.3.0-foss-2019b") ) then
    load("JAGS/4.3.0-foss-2019b")
end

if not ( isloaded("GLPK/4.65-GCCcore-8.3.0") ) then
    load("GLPK/4.65-GCCcore-8.3.0")
end

if not ( isloaded("poppler/0.87.0-foss-2019b") ) then
    load("poppler/0.87.0-foss-2019b")
end

if not ( isloaded("GMime/3.2.7-GCCcore-8.3.0") ) then
    load("GMime/3.2.7-GCCcore-8.3.0")
end

if not ( isloaded("NLopt/2.6.1-GCCcore-8.3.0") ) then
    load("NLopt/2.6.1-GCCcore-8.3.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-8.3.0") ) then
    load("libGLU/9.0.1-GCCcore-8.3.0")
end

if not ( isloaded("Mesa/19.1.7-GCCcore-8.3.0") ) then
    load("Mesa/19.1.7-GCCcore-8.3.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-8.3.0") ) then
    load("cairo/1.16.0-GCCcore-8.3.0")
end

if not ( isloaded("ICU/65.1-GCCcore-8.3.0") ) then
    load("ICU/65.1-GCCcore-8.3.0")
end

if not ( isloaded("netCDF/4.7.1-gompi-2019b") ) then
    load("netCDF/4.7.1-gompi-2019b")
end

if not ( isloaded("ZeroMQ/4.3.2-GCCcore-8.3.0") ) then
    load("ZeroMQ/4.3.2-GCCcore-8.3.0")
end

if not ( isloaded("SYMPHONY/5.6.17-GCCcore-8.3.0") ) then
    load("SYMPHONY/5.6.17-GCCcore-8.3.0")
end

if not ( isloaded("igraph/0.7.1-foss-2019b") ) then
    load("igraph/0.7.1-foss-2019b")
end

if not ( isloaded("OpenJPEG/2.3.1-GCCcore-8.3.0") ) then
    load("OpenJPEG/2.3.1-GCCcore-8.3.0")
end

if not ( isloaded("UnZip/6.0-GCCcore-8.3.0") ) then
    load("UnZip/6.0-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("NSS/3.45-GCCcore-8.3.0") ) then
    load("NSS/3.45-GCCcore-8.3.0")
end

if not ( isloaded("librsvg/2.49.1-foss-2019b") ) then
    load("librsvg/2.49.1-foss-2019b")
end

if not ( isloaded("unixODBC/2.3.7-foss-2019b") ) then
    load("unixODBC/2.3.7-foss-2019b")
end

if not ( isloaded("V8/3.4.0-foss-2019b-R-4.0.2") ) then
    load("V8/3.4.0-foss-2019b-R-4.0.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFHR", root)
setenv("EBVERSIONFHR", "4.0.2")
setenv("EBDEVELFHR", pathJoin(root, "logs/fhR-4.0.2-foss-2019b-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.4.2
