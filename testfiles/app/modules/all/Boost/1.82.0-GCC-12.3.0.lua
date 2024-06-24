help([==[

Description
===========
Boost provides free peer-reviewed portable C++ source libraries.


More information
================
 - Homepage: https://www.boost.org/
]==])

whatis([==[Description: Boost provides free peer-reviewed portable C++ source libraries.]==])
whatis([==[Homepage: https://www.boost.org/]==])
whatis([==[URL: https://www.boost.org/]==])

local root = "/app/software/Boost/1.82.0-GCC-12.3.0"

conflict("Boost")

if not ( isloaded("GCC/12.3.0") ) then
    load("GCC/12.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.3.0") ) then
    load("bzip2/1.0.8-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("XZ/5.4.2-GCCcore-12.3.0") ) then
    load("XZ/5.4.2-GCCcore-12.3.0")
end

if not ( isloaded("zstd/1.5.5-GCCcore-12.3.0") ) then
    load("zstd/1.5.5-GCCcore-12.3.0")
end

if not ( isloaded("ICU/73.2-GCCcore-12.3.0") ) then
    load("ICU/73.2-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.82.0")
setenv("EBDEVELBOOST", pathJoin(root, "logs/Boost-1.82.0-GCC-12.3.0-easybuild-devel"))

setenv("BOOST_ROOT", "/app/software/Boost/1.82.0-GCC-12.3.0")
-- Built with EasyBuild version 4.9.1
