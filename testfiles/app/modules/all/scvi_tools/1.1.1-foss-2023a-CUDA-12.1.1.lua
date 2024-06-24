help([==[

Description
===========
scvi-tools (single-cell variational inference tools) is a package for probabilistic modeling and
analysis of single-cell omics data, built on top of PyTorch and AnnData.


More information
================
 - Homepage: https://github.com/scverse/scvi-tools


Included extensions
===================
chex-0.1.85, commonmark-0.9.1, contextlib2-21.6.0, docrep-0.3.2, flax-0.6.1,
ml_collections-0.1.1, msgpack-1.0.7, mudata-0.2.3, multipledispatch-1.0.0,
nest_asyncio-1.6.0, numpyro-0.13.2, optax-0.1.9, orbax_checkpoint-0.5.3, pyro-
api-0.1.2, pyro-ppl-1.9.0, scvi_tools-1.1.1, toolz-0.12.0
]==])

whatis([==[Description: scvi-tools (single-cell variational inference tools) is a package for probabilistic modeling and
analysis of single-cell omics data, built on top of PyTorch and AnnData.]==])
whatis([==[Homepage: https://github.com/scverse/scvi-tools]==])
whatis([==[URL: https://github.com/scverse/scvi-tools]==])
whatis([==[Extensions: chex-0.1.85, commonmark-0.9.1, contextlib2-21.6.0, docrep-0.3.2, flax-0.6.1, ml_collections-0.1.1, msgpack-1.0.7, mudata-0.2.3, multipledispatch-1.0.0, nest_asyncio-1.6.0, numpyro-0.13.2, optax-0.1.9, orbax_checkpoint-0.5.3, pyro-api-0.1.2, pyro-ppl-1.9.0, scvi_tools-1.1.1, toolz-0.12.0]==])

local root = "/app/software/scvi_tools/1.1.1-foss-2023a-CUDA-12.1.1"

conflict("scvi_tools")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("CUDA/12.1.1") ) then
    load("CUDA/12.1.1")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("matplotlib/3.7.2-gfbf-2023a") ) then
    load("matplotlib/3.7.2-gfbf-2023a")
end

if not ( isloaded("meson-python/0.13.2-GCCcore-12.3.0") ) then
    load("meson-python/0.13.2-GCCcore-12.3.0")
end

if not ( isloaded("h5py/3.9.0-foss-2023a") ) then
    load("h5py/3.9.0-foss-2023a")
end

if not ( isloaded("IPython/8.14.0-GCCcore-12.3.0") ) then
    load("IPython/8.14.0-GCCcore-12.3.0")
end

if not ( isloaded("jax/0.4.24-foss-2023a-CUDA-12.1.1") ) then
    load("jax/0.4.24-foss-2023a-CUDA-12.1.1")
end

if not ( isloaded("scikit-learn/1.3.1-gfbf-2023a") ) then
    load("scikit-learn/1.3.1-gfbf-2023a")
end

if not ( isloaded("openpyxl/3.1.2-GCCcore-12.3.0") ) then
    load("openpyxl/3.1.2-GCCcore-12.3.0")
end

if not ( isloaded("PyTorch-Lightning/2.2.0.post0-foss-2023a-CUDA-12.1.1") ) then
    load("PyTorch-Lightning/2.2.0.post0-foss-2023a-CUDA-12.1.1")
end

if not ( isloaded("lightning/2.2.0.post0-foss-2023a-CUDA-12.1.1") ) then
    load("lightning/2.2.0.post0-foss-2023a-CUDA-12.1.1")
end

if not ( isloaded("dm-tree/0.1.8-GCCcore-12.3.0") ) then
    load("dm-tree/0.1.8-GCCcore-12.3.0")
end

if not ( isloaded("scanpy/1.9.8-foss-2023a") ) then
    load("scanpy/1.9.8-foss-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCVI_TOOLS", root)
setenv("EBVERSIONSCVI_TOOLS", "1.1.1")
setenv("EBDEVELSCVI_TOOLS", pathJoin(root, "logs/scvi_tools-1.1.1-foss-2023a-CUDA-12.1.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTSCVI_TOOLS", "docrep-0.3.2,multipledispatch-1.0.0,numpyro-0.13.2,toolz-0.12.0,chex-0.1.85,optax-0.1.9,pyro-api-0.1.2,pyro-ppl-1.9.0,commonmark-0.9.1,contextlib2-21.6.0,ml_collections-0.1.1,mudata-0.2.3,msgpack-1.0.7,nest_asyncio-1.6.0,orbax_checkpoint-0.5.3,flax-0.6.1,scvi_tools-1.1.1")
