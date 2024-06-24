help([==[

Description
===========
Ray is a fast and simple framework for building and running distributed applications.


More information
================
 - Homepage: https://docs.ray.io/en/latest/


Included extensions
===================
aiosignal-1.3.1, frozenlist-1.3.3, grpcio-1.51.1, Ray-2.6.2
]==])

whatis([==[Description: Ray is a fast and simple framework for building and running distributed applications.]==])
whatis([==[Homepage: https://docs.ray.io/en/latest/]==])
whatis([==[URL: https://docs.ray.io/en/latest/]==])
whatis([==[Extensions: aiosignal-1.3.1, frozenlist-1.3.3, grpcio-1.51.1, Ray-2.6.2]==])

local root = "/app/software/Ray-project/2.6.2-foss-2022b"

conflict("Ray-project")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("protobuf-python/4.23.0-GCCcore-12.2.0") ) then
    load("protobuf-python/4.23.0-GCCcore-12.2.0")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.2.0") ) then
    load("PyYAML/6.0-GCCcore-12.2.0")
end

if not ( isloaded("redis-py/4.6.0-foss-2022b") ) then
    load("redis-py/4.6.0-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRAYMINPROJECT", root)
setenv("EBVERSIONRAYMINPROJECT", "2.6.2")
setenv("EBDEVELRAYMINPROJECT", pathJoin(root, "logs/Ray-project-2.6.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTRAYMINPROJECT", "grpcio-1.51.1,aiosignal-1.3.1,frozenlist-1.3.3,Ray-2.6.2")
