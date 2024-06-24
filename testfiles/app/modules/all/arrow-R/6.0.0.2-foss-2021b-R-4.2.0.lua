help([==[

Description
===========
R interface to the Apache Arrow C++ library


More information
================
 - Homepage: https://cran.r-project.org/web/packages/arrow
]==])

whatis([==[Description: R interface to the Apache Arrow C++ library]==])
whatis([==[Homepage: https://cran.r-project.org/web/packages/arrow]==])
whatis([==[URL: https://cran.r-project.org/web/packages/arrow]==])

local root = "/app/software/arrow-R/6.0.0.2-foss-2021b-R-4.2.0"

conflict("arrow-R")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

if not ( isloaded("Arrow/6.0.0-foss-2021b") ) then
    load("Arrow/6.0.0-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTARROWMINR", root)
setenv("EBVERSIONARROWMINR", "6.0.0.2")
setenv("EBDEVELARROWMINR", pathJoin(root, "logs/arrow-R-6.0.0.2-foss-2021b-R-4.2.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.6.2
