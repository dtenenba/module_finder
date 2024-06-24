help([==[

Description
===========
Python implementation of the Loom file format, an efficient file format for large omics datasets


More information
================
 - Homepage: https://loompy.org/


Included extensions
===================
loompy-3.0.7, numpy-groupies-0.9.20
]==])

whatis([==[Description: Python implementation of the Loom file format, an efficient file format for large omics datasets]==])
whatis([==[Homepage: https://loompy.org/]==])
whatis([==[URL: https://loompy.org/]==])
whatis([==[Extensions: loompy-3.0.7, numpy-groupies-0.9.20]==])

local root = "/app/software/loompy/3.0.7-foss-2022b"

conflict("loompy")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("h5py/3.8.0-foss-2022b") ) then
    load("h5py/3.8.0-foss-2022b")
end

if not ( isloaded("numba/0.57.0rc1-foss-2022b") ) then
    load("numba/0.57.0rc1-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLOOMPY", root)
setenv("EBVERSIONLOOMPY", "3.0.7")
setenv("EBDEVELLOOMPY", pathJoin(root, "logs/loompy-3.0.7-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTLOOMPY", "numpy-groupies-0.9.20,loompy-3.0.7")
