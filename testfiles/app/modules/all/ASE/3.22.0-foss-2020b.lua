help([==[

Description
===========
ASE is a python package providing an open source Atomic Simulation Environment
 in the Python scripting language.

From version 3.20.1 we also include the ase-ext package, it contains optional reimplementations
in C of functions in ASE.  ASE uses it automatically when installed.


More information
================
 - Homepage: https://wiki.fysik.dtu.dk/ase


Included extensions
===================
ase-3.22.0, ase-ext-20.9.0, pytest-mock-3.6.1
]==])

whatis([==[Description: ASE is a python package providing an open source Atomic Simulation Environment
 in the Python scripting language.

From version 3.20.1 we also include the ase-ext package, it contains optional reimplementations
in C of functions in ASE.  ASE uses it automatically when installed.]==])
whatis([==[Homepage: https://wiki.fysik.dtu.dk/ase]==])
whatis([==[URL: https://wiki.fysik.dtu.dk/ase]==])
whatis([==[Extensions: ase-3.22.0, ase-ext-20.9.0, pytest-mock-3.6.1]==])

local root = "/app/software/ASE/3.22.0-foss-2020b"

conflict("ASE")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("Flask/1.1.2-GCCcore-10.2.0") ) then
    load("Flask/1.1.2-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-foss-2020b") ) then
    load("matplotlib/3.3.3-foss-2020b")
end

if not ( isloaded("Tkinter/3.8.6-GCCcore-10.2.0") ) then
    load("Tkinter/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("spglib-python/1.16.0-foss-2020b") ) then
    load("spglib-python/1.16.0-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTASE", root)
setenv("EBVERSIONASE", "3.22.0")
setenv("EBDEVELASE", pathJoin(root, "logs/ASE-3.22.0-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.2
setenv("EBEXTSLISTASE", "pytest-mock-3.6.1,ase-3.22.0,ase-ext-20.9.0")
