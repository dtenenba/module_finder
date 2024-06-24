help([==[

Description
===========
The SRA Toolkit, and the source-code SRA System Development
 Kit (SDK), will allow you to programmatically access data housed within SRA
 and convert it from the SRA format


More information
================
 - Homepage: https://github.com/ncbi/sra-tools
]==])

whatis([==[Description: The SRA Toolkit, and the source-code SRA System Development
 Kit (SDK), will allow you to programmatically access data housed within SRA
 and convert it from the SRA format]==])
whatis([==[Homepage: https://github.com/ncbi/sra-tools]==])
whatis([==[URL: https://github.com/ncbi/sra-tools]==])

local root = "/app/software/SRA-Toolkit/2.11.0-gompi-2020b"

conflict("SRA-Toolkit")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

if not ( isloaded("NGS/2.10.9-GCCcore-10.2.0") ) then
    load("NGS/2.10.9-GCCcore-10.2.0")
end

if not ( isloaded("file/5.39-GCCcore-10.2.0") ) then
    load("file/5.39-GCCcore-10.2.0")
end

if not ( isloaded("HDF5/1.10.7-gompi-2020b") ) then
    load("HDF5/1.10.7-gompi-2020b")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSRAMINTOOLKIT", root)
setenv("EBVERSIONSRAMINTOOLKIT", "2.11.0")
setenv("EBDEVELSRAMINTOOLKIT", pathJoin(root, "logs/SRA-Toolkit-2.11.0-gompi-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
