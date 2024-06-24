help([==[

Description
===========
The bx-python project is a Python library and associated set of scripts to allow for rapid
 implementation of genome scale analyses.


More information
================
 - Homepage: https://github.com/bxlab/bx-python


Included extensions
===================
bx-python-0.8.13, python-lzo-1.14
]==])

whatis([==[Description: The bx-python project is a Python library and associated set of scripts to allow for rapid
 implementation of genome scale analyses.]==])
whatis([==[Homepage: https://github.com/bxlab/bx-python]==])
whatis([==[URL: https://github.com/bxlab/bx-python]==])
whatis([==[Extensions: bx-python-0.8.13, python-lzo-1.14]==])

local root = "/app/software/bx-python/0.8.13-foss-2021b"

conflict("bx-python")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("LZO/2.10-GCCcore-11.2.0") ) then
    load("LZO/2.10-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBXMINPYTHON", root)
setenv("EBVERSIONBXMINPYTHON", "0.8.13")
setenv("EBDEVELBXMINPYTHON", pathJoin(root, "logs/bx-python-0.8.13-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
setenv("EBEXTSLISTBXMINPYTHON", "python-lzo-1.14,bx-python-0.8.13")
