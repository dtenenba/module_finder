help([==[

Description
===========
ncdf4: Interface to Unidata netCDF (version 4 or earlier) format data files


More information
================
 - Homepage: https://cran.r-project.org/web/packages/ncdf4
]==])

whatis([==[Description: ncdf4: Interface to Unidata netCDF (version 4 or earlier) format data files]==])
whatis([==[Homepage: https://cran.r-project.org/web/packages/ncdf4]==])
whatis([==[URL: https://cran.r-project.org/web/packages/ncdf4]==])

local root = "/app/software/ncdf4/1.17-foss-2019b"

conflict("ncdf4")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/3.6.2-foss-2019b") ) then
    load("R/3.6.2-foss-2019b")
end

if not ( isloaded("netCDF/4.7.1-gompi-2019b") ) then
    load("netCDF/4.7.1-gompi-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNCDF4", root)
setenv("EBVERSIONNCDF4", "1.17")
setenv("EBDEVELNCDF4", pathJoin(root, "logs/ncdf4-1.17-foss-2019b-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.2.1
