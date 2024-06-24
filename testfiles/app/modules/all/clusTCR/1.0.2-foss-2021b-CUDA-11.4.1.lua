help([==[

Description
===========
Python interface for rapid clustering of large sets of CDR3 sequences with unknown
 antigen specificity.


More information
================
 - Homepage: https://svalkiers.github.io/clusTCR/


Included extensions
===================
clusTCR-1.0.2, flit-3.8.0, flit_core-3.8.0, markov_clustering-0.0.6.dev0,
networkx-2.8.8, parmap-1.6.0, python-louvain-0.16, scikit-learn-1.1.3,
threadpoolctl-3.1.0, tomli-2.0.1, tomli-w-1.0.0
]==])

whatis([==[Description: Python interface for rapid clustering of large sets of CDR3 sequences with unknown
 antigen specificity.]==])
whatis([==[Homepage: https://svalkiers.github.io/clusTCR/]==])
whatis([==[URL: https://svalkiers.github.io/clusTCR/]==])
whatis([==[Extensions: clusTCR-1.0.2, flit-3.8.0, flit_core-3.8.0, markov_clustering-0.0.6.dev0, networkx-2.8.8, parmap-1.6.0, python-louvain-0.16, scikit-learn-1.1.3, threadpoolctl-3.1.0, tomli-2.0.1, tomli-w-1.0.0]==])

local root = "/app/software/clusTCR/1.0.2-foss-2021b-CUDA-11.4.1"

conflict("clusTCR")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2021b") ) then
    load("SciPy-bundle/2022.05-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("OpenMPI/4.1.1-GCC-11.2.0") ) then
    load("OpenMPI/4.1.1-GCC-11.2.0")
end

if not ( isloaded("Clang/12.0.1-GCCcore-11.2.0") ) then
    load("Clang/12.0.1-GCCcore-11.2.0")
end

if not ( isloaded("OpenBLAS/0.3.18-GCC-11.2.0") ) then
    load("OpenBLAS/0.3.18-GCC-11.2.0")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("faiss/1.7.3-foss-2021b-CUDA-11.4.1") ) then
    load("faiss/1.7.3-foss-2021b-CUDA-11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLUSTCR", root)
setenv("EBVERSIONCLUSTCR", "1.0.2")
setenv("EBDEVELCLUSTCR", pathJoin(root, "logs/clusTCR-1.0.2-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTCLUSTCR", "markov_clustering-0.0.6.dev0,parmap-1.6.0,networkx-2.8.8,python-louvain-0.16,flit_core-3.8.0,tomli-2.0.1,tomli-w-1.0.0,flit-3.8.0,threadpoolctl-3.1.0,scikit-learn-1.1.3,clusTCR-1.0.2")
