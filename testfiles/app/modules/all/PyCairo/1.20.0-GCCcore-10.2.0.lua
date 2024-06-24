help([==[

Description
===========
Python bindings for the cairo library


More information
================
 - Homepage: https://pycairo.readthedocs.io/
]==])

whatis([==[Description: Python bindings for the cairo library]==])
whatis([==[Homepage: https://pycairo.readthedocs.io/]==])
whatis([==[URL: https://pycairo.readthedocs.io/]==])

local root = "/app/software/PyCairo/1.20.0-GCCcore-10.2.0"

conflict("PyCairo")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-10.2.0") ) then
    load("cairo/1.16.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYCAIRO", root)
setenv("EBVERSIONPYCAIRO", "1.20.0")
setenv("EBDEVELPYCAIRO", pathJoin(root, "logs/PyCairo-1.20.0-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
