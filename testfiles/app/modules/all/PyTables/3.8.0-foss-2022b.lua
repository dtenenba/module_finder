help([==[

Description
===========
PyTables is a package for managing hierarchical datasets and designed to efficiently and easily cope
 with extremely large amounts of data. PyTables is built on top of the HDF5 library, using the Python language and the
 NumPy package. It features an object-oriented interface that, combined with C extensions for the performance-critical
 parts of the code (generated using Cython), makes it a fast, yet extremely easy to use tool for interactively browsing,
 processing and searching very large amounts of data. One important feature of PyTables is that it optimizes memory and 
 disk resources so that data takes much less space (specially if on-flight compression is used) than other solutions 
 such as relational or object oriented databases.


More information
================
 - Homepage: https://www.pytables.org


Included extensions
===================
blosc2-2.0.0, tables-3.8.0
]==])

whatis([==[Description: PyTables is a package for managing hierarchical datasets and designed to efficiently and easily cope
 with extremely large amounts of data. PyTables is built on top of the HDF5 library, using the Python language and the
 NumPy package. It features an object-oriented interface that, combined with C extensions for the performance-critical
 parts of the code (generated using Cython), makes it a fast, yet extremely easy to use tool for interactively browsing,
 processing and searching very large amounts of data. One important feature of PyTables is that it optimizes memory and 
 disk resources so that data takes much less space (specially if on-flight compression is used) than other solutions 
 such as relational or object oriented databases.]==])
whatis([==[Homepage: https://www.pytables.org]==])
whatis([==[URL: https://www.pytables.org]==])
whatis([==[Extensions: blosc2-2.0.0, tables-3.8.0]==])

local root = "/app/software/PyTables/3.8.0-foss-2022b"

conflict("PyTables")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("HDF5/1.14.0-gompi-2022b") ) then
    load("HDF5/1.14.0-gompi-2022b")
end

if not ( isloaded("LZO/2.10-GCCcore-12.2.0") ) then
    load("LZO/2.10-GCCcore-12.2.0")
end

if not ( isloaded("Blosc/1.21.3-GCCcore-12.2.0") ) then
    load("Blosc/1.21.3-GCCcore-12.2.0")
end

if not ( isloaded("Blosc2/2.8.0-GCCcore-12.2.0") ) then
    load("Blosc2/2.8.0-GCCcore-12.2.0")
end

if not ( isloaded("py-cpuinfo/9.0.0-GCCcore-12.2.0") ) then
    load("py-cpuinfo/9.0.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTABLES", root)
setenv("EBVERSIONPYTABLES", "3.8.0")
setenv("EBDEVELPYTABLES", pathJoin(root, "logs/PyTables-3.8.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPYTABLES", "blosc2-2.0.0,tables-3.8.0")
