help([==[

Description
===========
MPI for Python (mpi4py) provides bindings of the Message Passing Interface (MPI) standard for
 the Python programming language, allowing any Python program to exploit multiple processors.


More information
================
 - Homepage: https://github.com/mpi4py/mpi4py


Included extensions
===================
mpi4py-3.1.5
]==])

whatis([==[Description: MPI for Python (mpi4py) provides bindings of the Message Passing Interface (MPI) standard for
 the Python programming language, allowing any Python program to exploit multiple processors.]==])
whatis([==[Homepage: https://github.com/mpi4py/mpi4py]==])
whatis([==[URL: https://github.com/mpi4py/mpi4py]==])
whatis([==[Extensions: mpi4py-3.1.5]==])

local root = "/app/software/mpi4py/3.1.5-gompi-2023b"

conflict("mpi4py")

if not ( isloaded("gompi/2023b") ) then
    load("gompi/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMPI4PY", root)
setenv("EBVERSIONMPI4PY", "3.1.5")
setenv("EBDEVELMPI4PY", pathJoin(root, "logs/mpi4py-3.1.5-gompi-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTMPI4PY", "mpi4py-3.1.5")
