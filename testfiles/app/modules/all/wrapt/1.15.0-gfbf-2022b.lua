help([==[

Description
===========
The aim of the wrapt module is to provide a transparent object
proxy for Python, which can be used as the basis for the construction of
function wrappers and decorator functions.


More information
================
 - Homepage: https://pypi.org/project/wrapt/


Included extensions
===================
wrapt-1.15.0
]==])

whatis([==[Description: The aim of the wrapt module is to provide a transparent object
proxy for Python, which can be used as the basis for the construction of
function wrappers and decorator functions.]==])
whatis([==[Homepage: https://pypi.org/project/wrapt/]==])
whatis([==[URL: https://pypi.org/project/wrapt/]==])
whatis([==[Extensions: wrapt-1.15.0]==])

local root = "/app/software/wrapt/1.15.0-gfbf-2022b"

conflict("wrapt")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTWRAPT", root)
setenv("EBVERSIONWRAPT", "1.15.0")
setenv("EBDEVELWRAPT", pathJoin(root, "logs/wrapt-1.15.0-gfbf-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTWRAPT", "wrapt-1.15.0")
