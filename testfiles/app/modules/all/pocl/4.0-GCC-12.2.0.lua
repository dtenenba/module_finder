help([==[

Description
===========
PoCL is a portable open source (MIT-licensed) implementation 
of the OpenCL standard (1.2 with some 2.0 features supported).


More information
================
 - Homepage: http://portablecl.org
]==])

whatis([==[Description: PoCL is a portable open source (MIT-licensed) implementation 
of the OpenCL standard (1.2 with some 2.0 features supported).]==])
whatis([==[Homepage: http://portablecl.org]==])
whatis([==[URL: http://portablecl.org]==])

local root = "/app/software/pocl/4.0-GCC-12.2.0"

conflict("pocl")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("Clang/16.0.4-GCCcore-12.2.0") ) then
    load("Clang/16.0.4-GCCcore-12.2.0")
end

if not ( isloaded("hwloc/2.8.0-GCCcore-12.2.0") ) then
    load("hwloc/2.8.0-GCCcore-12.2.0")
end

if not ( isloaded("libtool/2.4.7-GCCcore-12.2.0") ) then
    load("libtool/2.4.7-GCCcore-12.2.0")
end

if not ( isloaded("libxml2/2.10.3-GCCcore-12.2.0") ) then
    load("libxml2/2.10.3-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPOCL", root)
setenv("EBVERSIONPOCL", "4.0")
setenv("EBDEVELPOCL", pathJoin(root, "logs/pocl-4.0-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
