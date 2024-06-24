help([==[

Description
===========
GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.


More information
================
 - Homepage: https://www.gdal.org
]==])

whatis([==[Description: GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.]==])
whatis([==[Homepage: https://www.gdal.org]==])
whatis([==[URL: https://www.gdal.org]==])

local root = "/app/software/GDAL/3.0.2-foss-2019b-Python-3.7.4"

conflict("GDAL")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("netCDF/4.7.1-gompi-2019b") ) then
    load("netCDF/4.7.1-gompi-2019b")
end

if not ( isloaded("expat/2.2.7-GCCcore-8.3.0") ) then
    load("expat/2.2.7-GCCcore-8.3.0")
end

if not ( isloaded("GEOS/3.8.0-GCC-8.3.0-Python-3.7.4") ) then
    load("GEOS/3.8.0-GCC-8.3.0-Python-3.7.4")
end

if not ( isloaded("SQLite/3.29.0-GCCcore-8.3.0") ) then
    load("SQLite/3.29.0-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("JasPer/2.0.14-GCCcore-8.3.0") ) then
    load("JasPer/2.0.14-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

if not ( isloaded("PCRE/8.43-GCCcore-8.3.0") ) then
    load("PCRE/8.43-GCCcore-8.3.0")
end

if not ( isloaded("PROJ/6.2.1-GCCcore-8.3.0") ) then
    load("PROJ/6.2.1-GCCcore-8.3.0")
end

if not ( isloaded("libgeotiff/1.5.1-GCCcore-8.3.0") ) then
    load("libgeotiff/1.5.1-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDAL", root)
setenv("EBVERSIONGDAL", "3.0.2")
setenv("EBDEVELGDAL", pathJoin(root, "logs/GDAL-3.0.2-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.0
