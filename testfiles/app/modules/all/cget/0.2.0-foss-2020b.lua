help([==[

Description
===========
Cmake package retrieval. This can be used to download and install cmake packages


More information
================
 - Homepage: https://cget.readthedocs.io/en/latest/index.html


Included extensions
===================
cget-0.2.0
]==])

whatis([==[Description: Cmake package retrieval. This can be used to download and install cmake packages]==])
whatis([==[Homepage: https://cget.readthedocs.io/en/latest/index.html]==])
whatis([==[URL: https://cget.readthedocs.io/en/latest/index.html]==])
whatis([==[Extensions: cget-0.2.0]==])

local root = "/app/software/cget/0.2.0-foss-2020b"

conflict("cget")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("CMake/3.18.4-GCCcore-10.2.0") ) then
    load("CMake/3.18.4-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCGET", root)
setenv("EBVERSIONCGET", "0.2.0")
setenv("EBDEVELCGET", pathJoin(root, "logs/cget-0.2.0-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTCGET", "cget-0.2.0")
