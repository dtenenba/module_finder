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

local root = "/app/software/GDAL/3.8.4-foss-2023b"

conflict("GDAL")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("netCDF/4.9.2-gompi-2023b") ) then
    load("netCDF/4.9.2-gompi-2023b")
end

if not ( isloaded("expat/2.5.0-GCCcore-13.2.0") ) then
    load("expat/2.5.0-GCCcore-13.2.0")
end

if not ( isloaded("GEOS/3.12.1-GCC-13.2.0") ) then
    load("GEOS/3.12.1-GCC-13.2.0")
end

if not ( isloaded("SQLite/3.43.1-GCCcore-13.2.0") ) then
    load("SQLite/3.43.1-GCCcore-13.2.0")
end

if not ( isloaded("libarchive/3.7.2-GCCcore-13.2.0") ) then
    load("libarchive/3.7.2-GCCcore-13.2.0")
end

if not ( isloaded("libxml2/2.11.5-GCCcore-13.2.0") ) then
    load("libxml2/2.11.5-GCCcore-13.2.0")
end

if not ( isloaded("libpng/1.6.40-GCCcore-13.2.0") ) then
    load("libpng/1.6.40-GCCcore-13.2.0")
end

if not ( isloaded("libjpeg-turbo/3.0.1-GCCcore-13.2.0") ) then
    load("libjpeg-turbo/3.0.1-GCCcore-13.2.0")
end

if not ( isloaded("LibTIFF/4.6.0-GCCcore-13.2.0") ) then
    load("LibTIFF/4.6.0-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("cURL/8.3.0-GCCcore-13.2.0") ) then
    load("cURL/8.3.0-GCCcore-13.2.0")
end

if not ( isloaded("PROJ/9.3.1-GCCcore-13.2.0") ) then
    load("PROJ/9.3.1-GCCcore-13.2.0")
end

if not ( isloaded("libgeotiff/1.7.1-GCCcore-13.2.0") ) then
    load("libgeotiff/1.7.1-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

if not ( isloaded("HDF5/1.14.3-gompi-2023b") ) then
    load("HDF5/1.14.3-gompi-2023b")
end

if not ( isloaded("HDF/4.2.16-2-GCCcore-13.2.0") ) then
    load("HDF/4.2.16-2-GCCcore-13.2.0")
end

if not ( isloaded("Armadillo/12.8.0-foss-2023b") ) then
    load("Armadillo/12.8.0-foss-2023b")
end

if not ( isloaded("CFITSIO/4.3.1-GCCcore-13.2.0") ) then
    load("CFITSIO/4.3.1-GCCcore-13.2.0")
end

if not ( isloaded("zstd/1.5.5-GCCcore-13.2.0") ) then
    load("zstd/1.5.5-GCCcore-13.2.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-13.2.0") ) then
    load("giflib/5.2.1-GCCcore-13.2.0")
end

if not ( isloaded("json-c/0.17-GCCcore-13.2.0") ) then
    load("json-c/0.17-GCCcore-13.2.0")
end

if not ( isloaded("Xerces-C++/3.2.5-GCCcore-13.2.0") ) then
    load("Xerces-C++/3.2.5-GCCcore-13.2.0")
end

if not ( isloaded("PCRE2/10.42-GCCcore-13.2.0") ) then
    load("PCRE2/10.42-GCCcore-13.2.0")
end

if not ( isloaded("OpenEXR/3.2.0-GCCcore-13.2.0") ) then
    load("OpenEXR/3.2.0-GCCcore-13.2.0")
end

if not ( isloaded("Qhull/2020.2-GCCcore-13.2.0") ) then
    load("Qhull/2020.2-GCCcore-13.2.0")
end

if not ( isloaded("LERC/4.0.0-GCCcore-13.2.0") ) then
    load("LERC/4.0.0-GCCcore-13.2.0")
end

if not ( isloaded("OpenJPEG/2.5.0-GCCcore-13.2.0") ) then
    load("OpenJPEG/2.5.0-GCCcore-13.2.0")
end

if not ( isloaded("SWIG/4.1.1-GCCcore-13.2.0") ) then
    load("SWIG/4.1.1-GCCcore-13.2.0")
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
setenv("EBVERSIONGDAL", "3.8.4")
setenv("EBDEVELGDAL", pathJoin(root, "logs/GDAL-3.8.4-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
