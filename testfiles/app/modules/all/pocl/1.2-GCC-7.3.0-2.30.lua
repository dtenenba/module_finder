help([==[

Description
===========
Pocl is a portable open source (MIT-licensed) implementation of the OpenCL standard


More information
================
 - Homepage: http://portablecl.org
]==])

whatis([==[Description: Pocl is a portable open source (MIT-licensed) implementation of the OpenCL standard]==])
whatis([==[Homepage: http://portablecl.org]==])

local root = "/app/software/pocl/1.2-GCC-7.3.0-2.30"

conflict("pocl")

if not ( isloaded("GCC/7.3.0-2.30") ) then
    load("GCC/7.3.0-2.30")
end

if not ( isloaded("Clang/6.0.1-GCC-7.3.0-2.30") ) then
    load("Clang/6.0.1-GCC-7.3.0-2.30")
end

if not ( isloaded("hwloc/1.11.10-GCCcore-7.3.0") ) then
    load("hwloc/1.11.10-GCCcore-7.3.0")
end

if not ( isloaded("libtool/2.4.6-GCCcore-7.3.0") ) then
    load("libtool/2.4.6-GCCcore-7.3.0")
end

if not ( isloaded("libxml2/2.9.8-GCCcore-7.3.0") ) then
    load("libxml2/2.9.8-GCCcore-7.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPOCL", root)
setenv("EBVERSIONPOCL", "1.2")
setenv("EBDEVELPOCL", pathJoin(root, "/app/logs/pocl-1.2-GCC-7.3.0-2.30-easybuild-devel"))

-- Built with EasyBuild version 3.9.0
