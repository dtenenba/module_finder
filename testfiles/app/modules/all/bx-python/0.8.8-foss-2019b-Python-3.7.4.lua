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
bx-python-0.8.8, python-lzo-1.12
]==])

whatis([==[Description: The bx-python project is a Python library and associated set of scripts to allow for rapid
 implementation of genome scale analyses.]==])
whatis([==[Homepage: https://github.com/bxlab/bx-python]==])
whatis([==[URL: https://github.com/bxlab/bx-python]==])
whatis([==[Extensions: bx-python-0.8.8, python-lzo-1.12]==])

local root = "/app/software/bx-python/0.8.8-foss-2019b-Python-3.7.4"

conflict("bx-python")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("LZO/2.10-GCCcore-8.3.0") ) then
    load("LZO/2.10-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBXMINPYTHON", root)
setenv("EBVERSIONBXMINPYTHON", "0.8.8")
setenv("EBDEVELBXMINPYTHON", pathJoin(root, "logs/bx-python-0.8.8-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTBXMINPYTHON", "python-lzo-1.12,bx-python-0.8.8")
