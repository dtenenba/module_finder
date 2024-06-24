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

local root = "/app/software/R-Tidyverse/4.3.1-gfbf-2022b"

conflict("R-Tidyverse")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("R/4.3.1-gfbf-2022b") ) then
    load("R/4.3.1-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRMINTIDYVERSE", root)
setenv("EBVERSIONRMINTIDYVERSE", "4.3.1")
setenv("EBDEVELRMINTIDYVERSE", pathJoin(root, "logs/R-Tidyverse-4.3.1-gfbf-2022b-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.7.2
