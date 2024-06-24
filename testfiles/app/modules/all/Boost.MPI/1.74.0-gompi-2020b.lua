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

local root = "/app/software/Boost.MPI/1.74.0-gompi-2020b"

conflict("Boost.MPI")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOSTMPI", root)
setenv("EBVERSIONBOOSTMPI", "1.74.0")
setenv("EBDEVELBOOSTMPI", pathJoin(root, "logs/Boost.MPI-1.74.0-gompi-2020b-easybuild-devel"))

setenv("BOOST_ROOT", "/app/software/Boost.MPI/1.74.0-gompi-2020b")
-- Built with EasyBuild version 4.3.3
