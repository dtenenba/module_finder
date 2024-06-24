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
clusTCR-1.0.2, faiss-1.5.3, flit-3.7.1, flit_core-3.7.1,
markov_clustering-0.0.6.dev0, networkx-2.4, parmap-1.5.3, python-louvain-0.16,
scikit-learn-0.23.1, threadpoolctl-3.1.0, tomli-2.0.1, tomli-w-1.0.0
]==])

whatis([==[Description: Python interface for rapid clustering of large sets of CDR3 sequences with unknown
 antigen specificity.]==])
whatis([==[Homepage: https://svalkiers.github.io/clusTCR/]==])
whatis([==[URL: https://svalkiers.github.io/clusTCR/]==])
whatis([==[Extensions: clusTCR-1.0.2, faiss-1.5.3, flit-3.7.1, flit_core-3.7.1, markov_clustering-0.0.6.dev0, networkx-2.4, parmap-1.5.3, python-louvain-0.16, scikit-learn-0.23.1, threadpoolctl-3.1.0, tomli-2.0.1, tomli-w-1.0.0]==])

local root = "/app/software/clusTCR/1.0.2-foss-2019b-Python-3.7.4"

conflict("clusTCR")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("OpenMPI/3.1.4-GCC-8.3.0") ) then
    load("OpenMPI/3.1.4-GCC-8.3.0")
end

if not ( isloaded("Clang/9.0.1-GCCcore-8.3.0") ) then
    load("Clang/9.0.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLUSTCR", root)
setenv("EBVERSIONCLUSTCR", "1.0.2")
setenv("EBDEVELCLUSTCR", pathJoin(root, "logs/clusTCR-1.0.2-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTCLUSTCR", "markov_clustering-0.0.6.dev0,parmap-1.5.3,networkx-2.4,python-louvain-0.16,flit_core-3.7.1,tomli-2.0.1,tomli-w-1.0.0,flit-3.7.1,threadpoolctl-3.1.0,scikit-learn-0.23.1,faiss-1.5.3,clusTCR-1.0.2")
