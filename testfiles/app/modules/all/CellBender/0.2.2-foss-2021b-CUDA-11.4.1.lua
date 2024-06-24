help([==[

Description
===========
CellBender is a software package for eliminating technical artifacts from high-throughput
 single-cell RNA sequencing (scRNA-seq) data.


More information
================
 - Homepage: https://cellbender.readthedocs.io/


Included extensions
===================
anndata-0.8.0, CellBender-0.2.2, natsort-8.1.0, opt_einsum-3.3.0, pyro-
api-0.1.2, pyro-ppl-1.8.3, sphinx-argparse-0.3.1,
sphinx_autodoc_typehints-1.13.1, sphinx_rtd_theme-1.1.1, sphinxcontrib-
programoutput-0.17
]==])

whatis([==[Description: CellBender is a software package for eliminating technical artifacts from high-throughput
 single-cell RNA sequencing (scRNA-seq) data.]==])
whatis([==[Homepage: https://cellbender.readthedocs.io/]==])
whatis([==[URL: https://cellbender.readthedocs.io/]==])
whatis([==[Extensions: anndata-0.8.0, CellBender-0.2.2, natsort-8.1.0, opt_einsum-3.3.0, pyro-api-0.1.2, pyro-ppl-1.8.3, sphinx-argparse-0.3.1, sphinx_autodoc_typehints-1.13.1, sphinx_rtd_theme-1.1.1, sphinxcontrib-programoutput-0.17]==])

local root = "/app/software/CellBender/0.2.2-foss-2021b-CUDA-11.4.1"

conflict("CellBender")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("PyTorch/1.11.0-foss-2021b-CUDA-11.4.1") ) then
    load("PyTorch/1.11.0-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("PyTables/3.6.1-foss-2021b") ) then
    load("PyTables/3.6.1-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("h5py/3.6.0-foss-2021b") ) then
    load("h5py/3.6.0-foss-2021b")
end

if not ( isloaded("tqdm/4.62.3-GCCcore-11.2.0") ) then
    load("tqdm/4.62.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLBENDER", root)
setenv("EBVERSIONCELLBENDER", "0.2.2")
setenv("EBDEVELCELLBENDER", pathJoin(root, "logs/CellBender-0.2.2-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTCELLBENDER", "sphinx-argparse-0.3.1,sphinx_autodoc_typehints-1.13.1,sphinx_rtd_theme-1.1.1,sphinxcontrib-programoutput-0.17,natsort-8.1.0,anndata-0.8.0,opt_einsum-3.3.0,pyro-api-0.1.2,pyro-ppl-1.8.3,CellBender-0.2.2")
