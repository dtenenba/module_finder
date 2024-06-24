help([==[

Description
===========
ArrayFire is a general-purpose library that simplifies the process of
 developing software that targets parallel and massively-parallel architectures
 including CPUs, GPUs, and other hardware acceleration devices.


More information
================
 - Homepage: https://arrayfire.com/
]==])

whatis([==[Description: 
 ArrayFire is a general-purpose library that simplifies the process of
 developing software that targets parallel and massively-parallel architectures
 including CPUs, GPUs, and other hardware acceleration devices.
]==])
whatis([==[Homepage: https://arrayfire.com/]==])
whatis([==[URL: https://arrayfire.com/]==])

local root = "/app/software/ArrayFire/3.8.1-foss-2019b-CUDA-10.2.89"

conflict("ArrayFire")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Boost/1.72.0-gompi-2019b") ) then
    load("Boost/1.72.0-gompi-2019b")
end

if not ( isloaded("CUDA/10.2.89-GCC-8.3.0") ) then
    load("CUDA/10.2.89-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARRAYFIRE", root)
setenv("EBVERSIONARRAYFIRE", "3.8.1")
setenv("EBDEVELARRAYFIRE", pathJoin(root, "logs/ArrayFire-3.8.1-foss-2019b-CUDA-10.2.89-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
