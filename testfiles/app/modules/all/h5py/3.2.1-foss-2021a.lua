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

local root = "/app/software/h5py/3.2.1-foss-2021a"

conflict("h5py")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

if not ( isloaded("HDF5/1.10.7-gompi-2021a") ) then
    load("HDF5/1.10.7-gompi-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTH5PY", root)
setenv("EBVERSIONH5PY", "3.2.1")
setenv("EBDEVELH5PY", pathJoin(root, "logs/h5py-3.2.1-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
