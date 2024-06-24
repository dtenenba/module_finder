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
blosc2-2.5.1, msgpack-1.0.7, tables-3.9.2
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
whatis([==[Extensions: blosc2-2.5.1, msgpack-1.0.7, tables-3.9.2]==])

local root = "/app/software/PyTables/3.9.2-foss-2023a"

conflict("PyTables")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("HDF5/1.14.0-gompi-2023a") ) then
    load("HDF5/1.14.0-gompi-2023a")
end

if not ( isloaded("LZO/2.10-GCCcore-12.3.0") ) then
    load("LZO/2.10-GCCcore-12.3.0")
end

if not ( isloaded("Blosc/1.21.5-GCCcore-12.3.0") ) then
    load("Blosc/1.21.5-GCCcore-12.3.0")
end

if not ( isloaded("Blosc2/2.11.0-GCCcore-12.3.0") ) then
    load("Blosc2/2.11.0-GCCcore-12.3.0")
end

if not ( isloaded("py-cpuinfo/9.0.0-GCCcore-12.3.0") ) then
    load("py-cpuinfo/9.0.0-GCCcore-12.3.0")
end

if not ( isloaded("ndindex/1.7-foss-2023a") ) then
    load("ndindex/1.7-foss-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTABLES", root)
setenv("EBVERSIONPYTABLES", "3.9.2")
setenv("EBDEVELPYTABLES", pathJoin(root, "logs/PyTables-3.9.2-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTPYTABLES", "msgpack-1.0.7,blosc2-2.5.1,tables-3.9.2")
