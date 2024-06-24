help([==[

Description
===========
Statistical and novel interactive HTML plots for Python


More information
================
 - Homepage: https://github.com/bokeh/bokeh


Included extensions
===================
bokeh-3.2.1, contourpy-1.0.7, tornado-6.3.2, xyzservices-2023.7.0
]==])

whatis([==[Description: Statistical and novel interactive HTML plots for Python]==])
whatis([==[Homepage: https://github.com/bokeh/bokeh]==])
whatis([==[URL: https://github.com/bokeh/bokeh]==])
whatis([==[Extensions: bokeh-3.2.1, contourpy-1.0.7, tornado-6.3.2, xyzservices-2023.7.0]==])

local root = "/app/software/bokeh/3.2.1-foss-2022b"

conflict("bokeh")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("matplotlib/3.7.0-gfbf-2022b") ) then
    load("matplotlib/3.7.0-gfbf-2022b")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.2.0") ) then
    load("PyYAML/6.0-GCCcore-12.2.0")
end

if not ( isloaded("Pillow/9.4.0-GCCcore-12.2.0") ) then
    load("Pillow/9.4.0-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBOKEH", root)
setenv("EBVERSIONBOKEH", "3.2.1")
setenv("EBDEVELBOKEH", pathJoin(root, "logs/bokeh-3.2.1-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTBOKEH", "tornado-6.3.2,contourpy-1.0.7,xyzservices-2023.7.0,bokeh-3.2.1")
