help([==[

Description
===========
NetCDF (network Common Data Form) is a set of software libraries
 and machine-independent data formats that support the creation, access, and sharing of array-oriented
 scientific data.


More information
================
 - Homepage: https://www.unidata.ucar.edu/software/netcdf/
]==])

whatis([==[Description: NetCDF (network Common Data Form) is a set of software libraries
 and machine-independent data formats that support the creation, access, and sharing of array-oriented
 scientific data.]==])
whatis([==[Homepage: https://www.unidata.ucar.edu/software/netcdf/]==])
whatis([==[URL: https://www.unidata.ucar.edu/software/netcdf/]==])

local root = "/app/software/netCDF/4.9.2-gompi-2023b"

conflict("netCDF")

if not ( isloaded("gompi/2023b") ) then
    load("gompi/2023b")
end

if not ( isloaded("HDF5/1.14.3-gompi-2023b") ) then
    load("HDF5/1.14.3-gompi-2023b")
end

if not ( isloaded("cURL/8.3.0-GCCcore-13.2.0") ) then
    load("cURL/8.3.0-GCCcore-13.2.0")
end

if not ( isloaded("Szip/2.1.1-GCCcore-13.2.0") ) then
    load("Szip/2.1.1-GCCcore-13.2.0")
end

if not ( isloaded("zstd/1.5.5-GCCcore-13.2.0") ) then
    load("zstd/1.5.5-GCCcore-13.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-13.2.0") ) then
    load("bzip2/1.0.8-GCCcore-13.2.0")
end

if not ( isloaded("libxml2/2.11.5-GCCcore-13.2.0") ) then
    load("libxml2/2.11.5-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETCDF", root)
setenv("EBVERSIONNETCDF", "4.9.2")
setenv("EBDEVELNETCDF", pathJoin(root, "logs/netCDF-4.9.2-gompi-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
