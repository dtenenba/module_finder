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

local root = "/app/software/h5py/3.7.0-foss-2022a"

conflict("h5py")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

if not ( isloaded("HDF5/1.12.2-gompi-2022a") ) then
    load("HDF5/1.12.2-gompi-2022a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTH5PY", root)
setenv("EBVERSIONH5PY", "3.7.0")
setenv("EBDEVELH5PY", pathJoin(root, "logs/h5py-3.7.0-foss-2022a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
