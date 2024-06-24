help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
beniget-0.4.1, Bottleneck-1.3.5, deap-1.3.3, gast-0.5.3, mpmath-1.2.1,
numexpr-2.8.4, numpy-1.24.2, pandas-1.5.3, ply-3.11, pythran-0.12.1,
scipy-1.10.1
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: beniget-0.4.1, Bottleneck-1.3.5, deap-1.3.3, gast-0.5.3, mpmath-1.2.1, numexpr-2.8.4, numpy-1.24.2, pandas-1.5.3, ply-3.11, pythran-0.12.1, scipy-1.10.1]==])

local root = "/app/software/SciPy-bundle/2023.02-gfbf-2022b"

conflict("SciPy-bundle")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("pybind11/2.10.3-GCCcore-12.2.0") ) then
    load("pybind11/2.10.3-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2023.02")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "logs/SciPy-bundle-2023.02-gfbf-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
prepend_path("CPATH", pathJoin(root, "lib/python3.10/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.10/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.10/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.24.2,ply-3.11,gast-0.5.3,beniget-0.4.1,pythran-0.12.1,scipy-1.10.1,numexpr-2.8.4,Bottleneck-1.3.5,pandas-1.5.3,mpmath-1.2.1,deap-1.3.3")
