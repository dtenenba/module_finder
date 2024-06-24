help([==[

Description
===========
HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.


More information
================
 - Homepage: https://portal.hdfgroup.org/display/support
]==])

whatis([==[Description: HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.]==])
whatis([==[Homepage: https://portal.hdfgroup.org/display/support]==])
whatis([==[URL: https://portal.hdfgroup.org/display/support]==])

local root = "/app/software/HDF5/1.10.5-gompi-2019b"

conflict("HDF5")

if not ( isloaded("gompi/2019b") ) then
    load("gompi/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("Szip/2.1.1-GCCcore-8.3.0") ) then
    load("Szip/2.1.1-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHDF5", root)
setenv("EBVERSIONHDF5", "1.10.5")
setenv("EBDEVELHDF5", pathJoin(root, "logs/HDF5-1.10.5-gompi-2019b-easybuild-devel"))

setenv("HDF5_DIR", "/app/software/HDF5/1.10.5-gompi-2019b")
-- Built with EasyBuild version 4.1.2
