help([==[

Description
===========
ArrayFire is a library of accelerated tensor computing functions.


More information
================
 - Homepage: http://www.arrayfire.com
]==])

whatis([==[Description: ArrayFire is a library of accelerated tensor computing functions.  ]==])
whatis([==[Homepage: http://www.arrayfire.com]==])

local root = "/app/software/ArrayFire/3.8.1"

conflict("ArrayFire")


-- Add Mesa, fontconfig, freeimage
if not isloaded("Mesa/21.1.7-GCCcore-11.2.0") then
    load("Mesa/21.1.7-GCCcore-11.2.0")
end

if not isloaded("FreeImage/3.18.0-GCCcore-11.2.0") then
    load("FreeImage/3.18.0-GCCcore-11.2.0")
end

if not isloaded("fontconfig/2.13.94-GCCcore-11.2.0") then
    load("fontconfig/2.13.94-GCCcore-11.2.0")
end

if not isloaded("CMake/3.21.1-GCCcore-11.2.0") then
    load("CMake/3.21.1-GCCcore-11.2.0")
end

setenv("ARRAYFIRE_HOME", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CMAKE_MODULE_PATH", pathJoin(root, "share/ArrayFire/cmake"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
-- prepend_path("PATH", pathJoin(root, "bin"))

-- hand Built with vi by John Dey
