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
jax-0.2.19, opt_einsum-3.3.0
]==])

whatis([==[Description: Composable transformations of Python+NumPy programs: 
differentiate, vectorize, JIT to GPU/TPU, and more]==])
whatis([==[Homepage: https://pypi.python.org/pypi/jax]==])
whatis([==[URL: https://pypi.python.org/pypi/jax]==])
whatis([==[Extensions: jax-0.2.19, opt_einsum-3.3.0]==])

local root = "/app/software/jax/0.2.19-foss-2020b"

conflict("jax")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("flatbuffers-python/1.12-GCCcore-10.2.0") ) then
    load("flatbuffers-python/1.12-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTJAX", root)
setenv("EBVERSIONJAX", "0.2.19")
setenv("EBDEVELJAX", pathJoin(root, "logs/jax-0.2.19-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
setenv("EBEXTSLISTJAX", "opt_einsum-3.3.0,jax-0.2.19")
