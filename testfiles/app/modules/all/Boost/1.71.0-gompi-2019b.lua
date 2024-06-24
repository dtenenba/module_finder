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

local root = "/app/software/Boost/1.71.0-gompi-2019b"

conflict("Boost")

if not ( isloaded("gompi/2019b") ) then
    load("gompi/2019b")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.71.0")
setenv("EBDEVELBOOST", pathJoin(root, "logs/Boost-1.71.0-gompi-2019b-easybuild-devel"))

setenv("BOOST_ROOT", "/app/software/Boost/1.71.0-gompi-2019b")
-- Built with EasyBuild version 4.1.2
