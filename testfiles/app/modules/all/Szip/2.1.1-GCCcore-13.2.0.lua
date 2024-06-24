help([==[

Description
===========
Szip compression software, providing lossless compression of scientific data


More information
================
 - Homepage: https://www.hdfgroup.org/doc_resource/SZIP/
]==])

whatis([==[Description: 
 Szip compression software, providing lossless compression of scientific data
]==])
whatis([==[Homepage: https://www.hdfgroup.org/doc_resource/SZIP/]==])
whatis([==[URL: https://www.hdfgroup.org/doc_resource/SZIP/]==])

local root = "/app/software/Szip/2.1.1-GCCcore-13.2.0"

conflict("Szip")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSZIP", root)
setenv("EBVERSIONSZIP", "2.1.1")
setenv("EBDEVELSZIP", pathJoin(root, "logs/Szip-2.1.1-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
