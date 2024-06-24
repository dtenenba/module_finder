help([==[

Description
===========
ICE normalization


More information
================
 - Homepage: https://pypi.org/project/iced/


Included extensions
===================
iced-0.5.6
]==])

whatis([==[Description: ICE normalization]==])
whatis([==[Homepage: https://pypi.org/project/iced/]==])
whatis([==[URL: https://pypi.org/project/iced/]==])
whatis([==[Extensions: iced-0.5.6]==])

local root = "/app/software/iced/0.5.6-foss-2021b"

conflict("iced")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTICED", root)
setenv("EBVERSIONICED", "0.5.6")
setenv("EBDEVELICED", pathJoin(root, "logs/iced-0.5.6-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
setenv("EBEXTSLISTICED", "iced-0.5.6")
