help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
Bottleneck-1.3.2, deap-1.3.1, mpi4py-3.0.3, mpmath-1.2.1, numexpr-2.7.3,
numpy-1.20.3, pandas-1.2.4, scipy-1.6.3
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: Bottleneck-1.3.2, deap-1.3.1, mpi4py-3.0.3, mpmath-1.2.1, numexpr-2.7.3, numpy-1.20.3, pandas-1.2.4, scipy-1.6.3]==])

local root = "/app/software/SciPy-bundle/2021.05-foss-2021a"

conflict("SciPy-bundle")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("pybind11/2.6.2-GCCcore-10.3.0") ) then
    load("pybind11/2.6.2-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2021.05")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "logs/SciPy-bundle-2021.05-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
prepend_path("CPATH", pathJoin(root, "lib/python3.9/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.9/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.9/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.20.3,scipy-1.6.3,mpi4py-3.0.3,numexpr-2.7.3,Bottleneck-1.3.2,pandas-1.2.4,mpmath-1.2.1,deap-1.3.1")
