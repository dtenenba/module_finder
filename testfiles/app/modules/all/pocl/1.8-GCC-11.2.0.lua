help([==[

Description
===========
Pocl is a portable open source (MIT-licensed) implementation of the OpenCL standard


More information
================
 - Homepage: https://portablecl.org
]==])

whatis([==[Description: Pocl is a portable open source (MIT-licensed) implementation of the OpenCL standard]==])
whatis([==[Homepage: https://portablecl.org]==])
whatis([==[URL: https://portablecl.org]==])

local root = "/app/software/pocl/1.8-GCC-11.2.0"

conflict("pocl")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Clang/12.0.1-GCCcore-11.2.0") ) then
    load("Clang/12.0.1-GCCcore-11.2.0")
end

if not ( isloaded("hwloc/2.5.0-GCCcore-11.2.0") ) then
    load("hwloc/2.5.0-GCCcore-11.2.0")
end

if not ( isloaded("libtool/2.4.6-GCCcore-11.2.0") ) then
    load("libtool/2.4.6-GCCcore-11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPOCL", root)
setenv("EBVERSIONPOCL", "1.8")
setenv("EBDEVELPOCL", pathJoin(root, "logs/pocl-1.8-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
