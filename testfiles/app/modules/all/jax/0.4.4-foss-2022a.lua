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
etils-1.0.0, jax-0.4.4, opt_einsum-3.3.0
]==])

whatis([==[Description: Composable transformations of Python+NumPy programs:
differentiate, vectorize, JIT to GPU/TPU, and more]==])
whatis([==[Homepage: https://pypi.python.org/pypi/jax]==])
whatis([==[URL: https://pypi.python.org/pypi/jax]==])
whatis([==[Extensions: etils-1.0.0, jax-0.4.4, opt_einsum-3.3.0]==])

local root = "/app/software/jax/0.4.4-foss-2022a"

conflict("jax")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

if not ( isloaded("flatbuffers-python/2.0-GCCcore-11.3.0") ) then
    load("flatbuffers-python/2.0-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTJAX", root)
setenv("EBVERSIONJAX", "0.4.4")
setenv("EBDEVELJAX", pathJoin(root, "logs/jax-0.4.4-foss-2022a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTJAX", "opt_einsum-3.3.0,etils-1.0.0,jax-0.4.4")
