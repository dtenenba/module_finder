help([==[

Description
===========
PyTables is a package for managing hierarchical datasets and designed to efficiently and easily cope
 with extremely large amounts of data. PyTables is built on top of the HDF5 library, using the Python language and the
 NumPy package. It features an object-oriented interface that, combined with C extensions for the performance-critical
 parts of the code (generated using Cython), makes it a fast, yet extremely easy to use tool for interactively browse,
 process and search very large amounts of data. One important feature of PyTables is that it optimizes memory and disk
 resources so that data takes much less space (specially if on-flight compression is used) than other solutions such as
 relational or object oriented databases.


More information
================
 - Homepage: http://www.pytables.org
]==])

whatis([==[Description: PyTables is a package for managing hierarchical datasets and designed to efficiently and easily cope
 with extremely large amounts of data. PyTables is built on top of the HDF5 library, using the Python language and the
 NumPy package. It features an object-oriented interface that, combined with C extensions for the performance-critical
 parts of the code (generated using Cython), makes it a fast, yet extremely easy to use tool for interactively browse,
 process and search very large amounts of data. One important feature of PyTables is that it optimizes memory and disk
 resources so that data takes much less space (specially if on-flight compression is used) than other solutions such as
 relational or object oriented databases.]==])
whatis([==[Homepage: http://www.pytables.org]==])
whatis([==[URL: http://www.pytables.org]==])

local root = "/app/software/PyTables/3.6.1-foss-2019b-Python-3.7.4"

conflict("PyTables")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("numexpr/2.7.0-foss-2019b") ) then
    load("numexpr/2.7.0-foss-2019b")
end

if not ( isloaded("HDF5/1.10.5-gompi-2019b") ) then
    load("HDF5/1.10.5-gompi-2019b")
end

if not ( isloaded("LZO/2.10-foss-2019b") ) then
    load("LZO/2.10-foss-2019b")
end

if not ( isloaded("Blosc/1.18.1-foss-2019b") ) then
    load("Blosc/1.18.1-foss-2019b")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTABLES", root)
setenv("EBVERSIONPYTABLES", "3.6.1")
setenv("EBDEVELPYTABLES", pathJoin(root, "logs/PyTables-3.6.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
