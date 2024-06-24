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
mpi4py-3.1.4
]==])

whatis([==[Description: MPI for Python (mpi4py) provides bindings of the Message Passing Interface (MPI) standard for
 the Python programming language, allowing any Python program to exploit multiple processors.]==])
whatis([==[Homepage: https://github.com/mpi4py/mpi4py]==])
whatis([==[URL: https://github.com/mpi4py/mpi4py]==])
whatis([==[Extensions: mpi4py-3.1.4]==])

local root = "/app/software/mpi4py/3.1.4-gompi-2022b"

conflict("mpi4py")

if not ( isloaded("gompi/2022b") ) then
    load("gompi/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMPI4PY", root)
setenv("EBVERSIONMPI4PY", "3.1.4")
setenv("EBDEVELMPI4PY", pathJoin(root, "logs/mpi4py-3.1.4-gompi-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
setenv("EBEXTSLISTMPI4PY", "mpi4py-3.1.4")
