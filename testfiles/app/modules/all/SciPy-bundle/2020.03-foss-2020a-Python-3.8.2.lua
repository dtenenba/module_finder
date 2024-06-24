help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
deap-1.3.1, mpi4py-3.0.3, mpmath-1.1.0, numpy-1.18.3, pandas-1.0.3,
scipy-1.4.1
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: deap-1.3.1, mpi4py-3.0.3, mpmath-1.1.0, numpy-1.18.3, pandas-1.0.3, scipy-1.4.1]==])

local root = "/app/software/SciPy-bundle/2020.03-foss-2020a-Python-3.8.2"

conflict("SciPy-bundle")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("pybind11/2.4.3-GCCcore-9.3.0-Python-3.8.2") ) then
    load("pybind11/2.4.3-GCCcore-9.3.0-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2020.03")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "logs/SciPy-bundle-2020.03-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
prepend_path("CPATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.18.3,scipy-1.4.1,mpi4py-3.0.3,pandas-1.0.3,mpmath-1.1.0,deap-1.3.1")
