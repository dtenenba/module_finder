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
jax-0.3.9, opt_einsum-3.3.0
]==])

whatis([==[Description: Composable transformations of Python+NumPy programs:
differentiate, vectorize, JIT to GPU/TPU, and more]==])
whatis([==[Homepage: https://pypi.python.org/pypi/jax]==])
whatis([==[URL: https://pypi.python.org/pypi/jax]==])
whatis([==[Extensions: jax-0.3.9, opt_einsum-3.3.0]==])

local root = "/app/software/jax/0.3.9-foss-2021b-CUDA-11.4.1"

conflict("jax")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("cuDNN/8.2.2.26-CUDA-11.4.1") ) then
    load("cuDNN/8.2.2.26-CUDA-11.4.1")
end

if not ( isloaded("NCCL/2.10.3-GCCcore-11.2.0-CUDA-11.4.1") ) then
    load("NCCL/2.10.3-GCCcore-11.2.0-CUDA-11.4.1")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("flatbuffers-python/2.0-GCCcore-11.2.0") ) then
    load("flatbuffers-python/2.0-GCCcore-11.2.0")
end

if not ( isloaded("typing-extensions/3.10.0.2-GCCcore-11.2.0") ) then
    load("typing-extensions/3.10.0.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTJAX", root)
setenv("EBVERSIONJAX", "0.3.9")
setenv("EBDEVELJAX", pathJoin(root, "logs/jax-0.3.9-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
setenv("EBEXTSLISTJAX", "opt_einsum-3.3.0,jax-0.3.9")
