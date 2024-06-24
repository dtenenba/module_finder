help([==[

Description
===========
The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for
 using data in the INSDC Sequence Read Archives.


More information
================
 - Homepage: https://github.com/ncbi/ncbi-vdb
]==])

whatis([==[Description: The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for
 using data in the INSDC Sequence Read Archives.]==])
whatis([==[Homepage: https://github.com/ncbi/ncbi-vdb]==])
whatis([==[URL: https://github.com/ncbi/ncbi-vdb]==])

local root = "/app/software/ncbi-vdb/3.0.0-gompi-2021b"

conflict("ncbi-vdb")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("file/5.41-GCCcore-11.2.0") ) then
    load("file/5.41-GCCcore-11.2.0")
end

if not ( isloaded("HDF5/1.10.8-gompi-2021b") ) then
    load("HDF5/1.10.8-gompi-2021b")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTNCBIMINVDB", root)
setenv("EBVERSIONNCBIMINVDB", "3.0.0")
setenv("EBDEVELNCBIMINVDB", pathJoin(root, "logs/ncbi-vdb-3.0.0-gompi-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
