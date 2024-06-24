help([==[

Description
===========
R interface to Google's open source JavaScript engine


More information
================
 - Homepage: https://cran.r-project.org/web/packages/V8/
]==])

whatis([==[Description: R interface to Google's open source JavaScript engine]==])
whatis([==[Homepage: https://cran.r-project.org/web/packages/V8/]==])
whatis([==[URL: https://cran.r-project.org/web/packages/V8/]==])

local root = "/app/software/V8/3.4.0-foss-2019b-R-4.0.2"

conflict("V8")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

if not ( isloaded("nodejs/12.16.1-GCCcore-8.3.0") ) then
    load("nodejs/12.16.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTV8", root)
setenv("EBVERSIONV8", "3.4.0")
setenv("EBDEVELV8", pathJoin(root, "logs/V8-3.4.0-foss-2019b-R-4.0.2-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.3.4
