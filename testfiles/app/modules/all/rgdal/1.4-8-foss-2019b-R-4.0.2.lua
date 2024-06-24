help([==[

Description
===========
Provides bindings to the 'Geospatial' Data Abstraction Library ('GDAL') (>= 1.11.4 and <= 2.5.0) and
 access to projection/transformation operations from the 'PROJ.4' library.


More information
================
 - Homepage: http://rgdal.r-forge.r-project.org/
]==])

whatis([==[Description: Provides bindings to the 'Geospatial' Data Abstraction Library ('GDAL') (>= 1.11.4 and <= 2.5.0) and
 access to projection/transformation operations from the 'PROJ.4' library.]==])
whatis([==[Homepage: http://rgdal.r-forge.r-project.org/]==])
whatis([==[URL: http://rgdal.r-forge.r-project.org/]==])

local root = "/app/software/rgdal/1.4-8-foss-2019b-R-4.0.2"

conflict("rgdal")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

if not ( isloaded("GDAL/3.0.2-foss-2019b-Python-3.7.4") ) then
    load("GDAL/3.0.2-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRGDAL", root)
setenv("EBVERSIONRGDAL", "1.4-8")
setenv("EBDEVELRGDAL", pathJoin(root, "logs/rgdal-1.4-8-foss-2019b-R-4.0.2-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.2.2
