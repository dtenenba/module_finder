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

local root = "/app/software/GDAL/3.6.2-foss-2022b"

conflict("GDAL")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("netCDF/4.9.0-gompi-2022b") ) then
    load("netCDF/4.9.0-gompi-2022b")
end

if not ( isloaded("expat/2.4.9-GCCcore-12.2.0") ) then
    load("expat/2.4.9-GCCcore-12.2.0")
end

if not ( isloaded("GEOS/3.11.1-GCC-12.2.0") ) then
    load("GEOS/3.11.1-GCC-12.2.0")
end

if not ( isloaded("SQLite/3.39.4-GCCcore-12.2.0") ) then
    load("SQLite/3.39.4-GCCcore-12.2.0")
end

if not ( isloaded("libxml2/2.10.3-GCCcore-12.2.0") ) then
    load("libxml2/2.10.3-GCCcore-12.2.0")
end

if not ( isloaded("libpng/1.6.38-GCCcore-12.2.0") ) then
    load("libpng/1.6.38-GCCcore-12.2.0")
end

if not ( isloaded("libjpeg-turbo/2.1.4-GCCcore-12.2.0") ) then
    load("libjpeg-turbo/2.1.4-GCCcore-12.2.0")
end

if not ( isloaded("JasPer/4.0.0-GCCcore-12.2.0") ) then
    load("JasPer/4.0.0-GCCcore-12.2.0")
end

if not ( isloaded("LibTIFF/4.4.0-GCCcore-12.2.0") ) then
    load("LibTIFF/4.4.0-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("cURL/7.86.0-GCCcore-12.2.0") ) then
    load("cURL/7.86.0-GCCcore-12.2.0")
end

if not ( isloaded("PCRE/8.45-GCCcore-12.2.0") ) then
    load("PCRE/8.45-GCCcore-12.2.0")
end

if not ( isloaded("PROJ/9.1.1-GCCcore-12.2.0") ) then
    load("PROJ/9.1.1-GCCcore-12.2.0")
end

if not ( isloaded("libgeotiff/1.7.1-GCCcore-12.2.0") ) then
    load("libgeotiff/1.7.1-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("HDF5/1.14.0-gompi-2022b") ) then
    load("HDF5/1.14.0-gompi-2022b")
end

if not ( isloaded("HDF/4.2.15-GCCcore-12.2.0") ) then
    load("HDF/4.2.15-GCCcore-12.2.0")
end

if not ( isloaded("Armadillo/11.4.3-foss-2022b") ) then
    load("Armadillo/11.4.3-foss-2022b")
end

if not ( isloaded("CFITSIO/4.2.0-GCCcore-12.2.0") ) then
    load("CFITSIO/4.2.0-GCCcore-12.2.0")
end

if not ( isloaded("zstd/1.5.2-GCCcore-12.2.0") ) then
    load("zstd/1.5.2-GCCcore-12.2.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-12.2.0") ) then
    load("giflib/5.2.1-GCCcore-12.2.0")
end

if not ( isloaded("json-c/0.16-GCCcore-12.2.0") ) then
    load("json-c/0.16-GCCcore-12.2.0")
end

if not ( isloaded("Xerces-C++/3.2.4-GCCcore-12.2.0") ) then
    load("Xerces-C++/3.2.4-GCCcore-12.2.0")
end

if not ( isloaded("PCRE2/10.40-GCCcore-12.2.0") ) then
    load("PCRE2/10.40-GCCcore-12.2.0")
end

if not ( isloaded("OpenEXR/3.1.5-GCCcore-12.2.0") ) then
    load("OpenEXR/3.1.5-GCCcore-12.2.0")
end

if not ( isloaded("Brunsli/0.1-GCCcore-12.2.0") ) then
    load("Brunsli/0.1-GCCcore-12.2.0")
end

if not ( isloaded("Qhull/2020.2-GCCcore-12.2.0") ) then
    load("Qhull/2020.2-GCCcore-12.2.0")
end

if not ( isloaded("LERC/4.0.0-GCCcore-12.2.0") ) then
    load("LERC/4.0.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDAL", root)
setenv("EBVERSIONGDAL", "3.6.2")
setenv("EBDEVELGDAL", pathJoin(root, "logs/GDAL-3.6.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
