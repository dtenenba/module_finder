help([==[

Description
===========
Composable transformations of Python+NumPy programs:
differentiate, vectorize, JIT to GPU/TPU, and more


More information
================
 - Homepage: https://pypi.python.org/pypi/jax


Included extensions
===================
jax-0.4.24
]==])

whatis([==[Description: Composable transformations of Python+NumPy programs:
differentiate, vectorize, JIT to GPU/TPU, and more]==])
whatis([==[Homepage: https://pypi.python.org/pypi/jax]==])
whatis([==[URL: https://pypi.python.org/pypi/jax]==])
whatis([==[Extensions: jax-0.4.24]==])

local root = "/app/software/jax/0.4.24-foss-2023a-CUDA-12.1.1"

conflict("jax")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("CUDA/12.1.1") ) then
    load("CUDA/12.1.1")
end

if not ( isloaded("cuDNN/8.9.2.26-CUDA-12.1.1") ) then
    load("cuDNN/8.9.2.26-CUDA-12.1.1")
end

if not ( isloaded("NCCL/2.18.3-GCCcore-12.3.0-CUDA-12.1.1") ) then
    load("NCCL/2.18.3-GCCcore-12.3.0-CUDA-12.1.1")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("flatbuffers-python/23.5.26-GCCcore-12.3.0") ) then
    load("flatbuffers-python/23.5.26-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("ml_dtypes/0.3.2-foss-2023a") ) then
    load("ml_dtypes/0.3.2-foss-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTJAX", root)
setenv("EBVERSIONJAX", "0.4.24")
setenv("EBDEVELJAX", pathJoin(root, "logs/jax-0.4.24-foss-2023a-CUDA-12.1.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTJAX", "jax-0.4.24")
