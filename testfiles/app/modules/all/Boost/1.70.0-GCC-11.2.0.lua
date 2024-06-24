help([==[

Description
===========
Boost provides free peer-reviewed portable C++ source libraries.


More information
================
 - Homepage: http://www.boost.org/
]==])

whatis([==[Description: Boost provides free peer-reviewed portable C++ source libraries.]==])
whatis([==[Homepage: http://www.boost.org/]==])
whatis([==[URL: http://www.boost.org/]==])

local root = "/app/software/Boost/1.70.0-GCC-11.2.0"

conflict("Boost")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-11.2.0") ) then
    load("XZ/5.2.5-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.70.0")
setenv("EBDEVELBOOST", pathJoin(root, "logs/Boost-1.70.0-GCC-11.2.0-easybuild-devel"))

setenv("BOOST_ROOT", "/app/software/Boost/1.70.0-GCC-11.2.0")
-- Built with EasyBuild version 4.7.2
