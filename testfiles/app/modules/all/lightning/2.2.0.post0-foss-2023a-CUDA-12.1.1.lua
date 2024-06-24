help([==[

Description
===========
lighting for PyTorch.


More information
================
 - Homepage: https://github.com/lanpa/lighting


Included extensions
===================
lighting-2.2.0-post0
]==])

whatis([==[Description: lighting for PyTorch.]==])
whatis([==[Homepage: https://github.com/lanpa/lighting]==])
whatis([==[URL: https://github.com/lanpa/lighting]==])
whatis([==[Extensions: lighting-2.2.0-post0]==])

local root = "/app/software/lightning/2.2.0.post0-foss-2023a-PyTorch-2.1.2-CUDA-12.1.1"

conflict("lightning")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("CUDA/12.1.1") ) then
    load("CUDA/12.1.1")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("PyTorch/2.1.2-foss-2023a-CUDA-12.1.1") ) then
    load("PyTorch/2.1.2-foss-2023a-CUDA-12.1.1")
end

if not ( isloaded("PyTorch-Lightning/2.2.0.post0-foss-2023a-CUDA-12.1.1") ) then
    load("PyTorch-Lightning/2.2.0.post0-foss-2023a-CUDA-12.1.1")
end



prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIGHTNING", root)
setenv("EBVERSIONLIGHTNING", "2.2.0.post0")

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTLIGHTNING", "lighting-2.2.0-post0")
