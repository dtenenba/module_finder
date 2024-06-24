help([==[

Description
===========
CellRank is a toolkit to uncover cellular dynamics based on
 Markov state modeling of single-cell data.  It contains two main modules:
kernels compute cell-cell transition probabilities and estimators generate
hypothesis based on these.


More information
================
 - Homepage: https://cellrank.readthedocs.io/en/stable/


Included extensions
===================
CellRank-1.5.1, docrep-0.3.2, joblib-1.0.1, progressbar2-3.53.1, pygam-0.8.0,
pygpcca-1.0.3, python-utils-2.5.6, wrapt-1.12.1
]==])

whatis([==[Description: CellRank is a toolkit to uncover cellular dynamics based on
 Markov state modeling of single-cell data.  It contains two main modules:
kernels compute cell-cell transition probabilities and estimators generate
hypothesis based on these. ]==])
whatis([==[Homepage: https://cellrank.readthedocs.io/en/stable/]==])
whatis([==[URL: https://cellrank.readthedocs.io/en/stable/]==])
whatis([==[Extensions: CellRank-1.5.1, docrep-0.3.2, joblib-1.0.1, progressbar2-3.53.1, pygam-0.8.0, pygpcca-1.0.3, python-utils-2.5.6, wrapt-1.12.1]==])

local root = "/app/software/CellRank/1.5.1-foss-2020b"

conflict("CellRank")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("PETSc/3.14.4-foss-2020b") ) then
    load("PETSc/3.14.4-foss-2020b")
end

if not ( isloaded("petsc4py/3.14.1-foss-2020b") ) then
    load("petsc4py/3.14.1-foss-2020b")
end

if not ( isloaded("SLEPc/3.14.2-foss-2020b") ) then
    load("SLEPc/3.14.2-foss-2020b")
end

if not ( isloaded("slepc4py/3.14.0-foss-2020b") ) then
    load("slepc4py/3.14.0-foss-2020b")
end

if not ( isloaded("scikit-learn/0.24.2-foss-2020b") ) then
    load("scikit-learn/0.24.2-foss-2020b")
end

if not ( isloaded("scVelo/0.2.4-foss-2020b") ) then
    load("scVelo/0.2.4-foss-2020b")
end

if not ( isloaded("typing-extensions/3.7.4.3-GCCcore-10.2.0") ) then
    load("typing-extensions/3.7.4.3-GCCcore-10.2.0")
end

if not ( isloaded("jax/0.2.19-fosscuda-2020b") ) then
    load("jax/0.2.19-fosscuda-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTCELLRANK", root)
setenv("EBVERSIONCELLRANK", "1.5.1")
setenv("EBDEVELCELLRANK", pathJoin(root, "logs/CellRank-1.5.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTCELLRANK", "docrep-0.3.2,python-utils-2.5.6,progressbar2-3.53.1,pygam-0.8.0,joblib-1.0.1,pygpcca-1.0.3,wrapt-1.12.1,CellRank-1.5.1")
