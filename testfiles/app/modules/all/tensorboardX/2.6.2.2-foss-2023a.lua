help([==[

Description
===========
Tensorboard for PyTorch.


More information
================
 - Homepage: https://github.com/lanpa/tensorboardX


Included extensions
===================
tensorboardX-2.6.2.2
]==])

whatis([==[Description: Tensorboard for PyTorch.]==])
whatis([==[Homepage: https://github.com/lanpa/tensorboardX]==])
whatis([==[URL: https://github.com/lanpa/tensorboardX]==])
whatis([==[Extensions: tensorboardX-2.6.2.2]==])

local root = "/app/software/tensorboardX/2.6.2.2-foss-2023a"

conflict("tensorboardX")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("protobuf-python/4.24.0-GCCcore-12.3.0") ) then
    load("protobuf-python/4.24.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTENSORBOARDX", root)
setenv("EBVERSIONTENSORBOARDX", "2.6.2.2")
setenv("EBDEVELTENSORBOARDX", pathJoin(root, "logs/tensorboardX-2.6.2.2-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTTENSORBOARDX", "tensorboardX-2.6.2.2")
