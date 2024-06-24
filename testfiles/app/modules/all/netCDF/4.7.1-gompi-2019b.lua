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

local root = "/app/software/netCDF/4.7.1-gompi-2019b"

conflict("netCDF")

if not ( isloaded("gompi/2019b") ) then
    load("gompi/2019b")
end

if not ( isloaded("HDF5/1.10.5-gompi-2019b") ) then
    load("HDF5/1.10.5-gompi-2019b")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

if not ( isloaded("Szip/2.1.1-GCCcore-8.3.0") ) then
    load("Szip/2.1.1-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETCDF", root)
setenv("EBVERSIONNETCDF", "4.7.1")
setenv("EBDEVELNETCDF", pathJoin(root, "logs/netCDF-4.7.1-gompi-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
