help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
beniget-0.4.1, Bottleneck-1.3.2, deap-1.3.1, gast-0.5.2, mpi4py-3.1.1,
mpmath-1.2.1, numexpr-2.7.3, numpy-1.21.3, pandas-1.3.4, ply-3.11,
pythran-0.10.0, scipy-1.7.1
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: beniget-0.4.1, Bottleneck-1.3.2, deap-1.3.1, gast-0.5.2, mpi4py-3.1.1, mpmath-1.2.1, numexpr-2.7.3, numpy-1.21.3, pandas-1.3.4, ply-3.11, pythran-0.10.0, scipy-1.7.1]==])

local root = "/app/software/SciPy-bundle/2021.10-foss-2021b"

conflict("SciPy-bundle")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("pybind11/2.7.1-GCCcore-11.2.0") ) then
    load("pybind11/2.7.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2021.10")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "logs/SciPy-bundle-2021.10-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
prepend_path("CPATH", pathJoin(root, "lib/python3.9/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.9/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.9/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.21.3,ply-3.11,gast-0.5.2,beniget-0.4.1,pythran-0.10.0,scipy-1.7.1,mpi4py-3.1.1,numexpr-2.7.3,Bottleneck-1.3.2,pandas-1.3.4,mpmath-1.2.1,deap-1.3.1")
