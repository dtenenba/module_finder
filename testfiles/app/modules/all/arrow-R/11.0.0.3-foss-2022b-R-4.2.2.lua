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

local root = "/app/software/arrow-R/11.0.0.3-foss-2022b-R-4.2.2"

conflict("arrow-R")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("R/4.2.2-foss-2022b") ) then
    load("R/4.2.2-foss-2022b")
end

if not ( isloaded("Arrow/11.0.0-gfbf-2022b") ) then
    load("Arrow/11.0.0-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTARROWMINR", root)
setenv("EBVERSIONARROWMINR", "11.0.0.3")
setenv("EBDEVELARROWMINR", pathJoin(root, "logs/arrow-R-11.0.0.3-foss-2022b-R-4.2.2-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.9.0
