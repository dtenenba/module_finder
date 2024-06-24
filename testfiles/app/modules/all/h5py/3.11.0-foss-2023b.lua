help([==[

Description
===========
HDF5 for Python (h5py) is a general-purpose Python interface to the Hierarchical Data Format library,
 version 5. HDF5 is a versatile, mature scientific software library designed for the fast, flexible storage of enormous
 amounts of data.


More information
================
 - Homepage: https://www.h5py.org/
]==])

whatis([==[Description: HDF5 for Python (h5py) is a general-purpose Python interface to the Hierarchical Data Format library,
 version 5. HDF5 is a versatile, mature scientific software library designed for the fast, flexible storage of enormous
 amounts of data.]==])
whatis([==[Homepage: https://www.h5py.org/]==])
whatis([==[URL: https://www.h5py.org/]==])

local root = "/app/software/h5py/3.11.0-foss-2023b"

conflict("h5py")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

if not ( isloaded("mpi4py/3.1.5-gompi-2023b") ) then
    load("mpi4py/3.1.5-gompi-2023b")
end

if not ( isloaded("HDF5/1.14.3-gompi-2023b") ) then
    load("HDF5/1.14.3-gompi-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTH5PY", root)
setenv("EBVERSIONH5PY", "3.11.0")
setenv("EBDEVELH5PY", pathJoin(root, "logs/h5py-3.11.0-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
