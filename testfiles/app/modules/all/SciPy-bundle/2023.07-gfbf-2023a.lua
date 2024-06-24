help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
beniget-0.4.1, Bottleneck-1.3.7, deap-1.4.0, gast-0.5.4, mpmath-1.3.0,
numexpr-2.8.4, numpy-1.25.1, pandas-2.0.3, ply-3.11, pythran-0.13.1,
scipy-1.11.1, tzdata-2023.3, versioneer-0.29
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: beniget-0.4.1, Bottleneck-1.3.7, deap-1.4.0, gast-0.5.4, mpmath-1.3.0, numexpr-2.8.4, numpy-1.25.1, pandas-2.0.3, ply-3.11, pythran-0.13.1, scipy-1.11.1, tzdata-2023.3, versioneer-0.29]==])

local root = "/app/software/SciPy-bundle/2023.07-gfbf-2023a"

conflict("SciPy-bundle")

if not ( isloaded("gfbf/2023a") ) then
    load("gfbf/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

if not ( isloaded("pybind11/2.11.1-GCCcore-12.3.0") ) then
    load("pybind11/2.11.1-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2023.07")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "logs/SciPy-bundle-2023.07-gfbf-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
prepend_path("CPATH", pathJoin(root, "lib/python3.11/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.11/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.11/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.25.1,ply-3.11,gast-0.5.4,beniget-0.4.1,pythran-0.13.1,versioneer-0.29,scipy-1.11.1,numexpr-2.8.4,Bottleneck-1.3.7,tzdata-2023.3,pandas-2.0.3,mpmath-1.3.0,deap-1.4.0")
