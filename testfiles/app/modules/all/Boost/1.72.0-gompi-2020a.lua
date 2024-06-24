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

local root = "/app/software/Boost/1.72.0-gompi-2020a"

conflict("Boost")

if not ( isloaded("gompi/2020a") ) then
    load("gompi/2020a")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-9.3.0") ) then
    load("bzip2/1.0.8-GCCcore-9.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-9.3.0") ) then
    load("zlib/1.2.11-GCCcore-9.3.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-9.3.0") ) then
    load("XZ/5.2.5-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.72.0")
setenv("EBDEVELBOOST", pathJoin(root, "logs/Boost-1.72.0-gompi-2020a-easybuild-devel"))

setenv("BOOST_ROOT", "/app/software/Boost/1.72.0-gompi-2020a")
-- Built with EasyBuild version 4.2.2
