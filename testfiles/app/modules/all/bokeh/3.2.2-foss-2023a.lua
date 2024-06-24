help([==[

Description
===========
Statistical and novel interactive HTML plots for Python


More information
================
 - Homepage: https://github.com/bokeh/bokeh


Included extensions
===================
bokeh-3.2.2, contourpy-1.0.7, xyzservices-2023.7.0
]==])

whatis([==[Description: Statistical and novel interactive HTML plots for Python]==])
whatis([==[Homepage: https://github.com/bokeh/bokeh]==])
whatis([==[URL: https://github.com/bokeh/bokeh]==])
whatis([==[Extensions: bokeh-3.2.2, contourpy-1.0.7, xyzservices-2023.7.0]==])

local root = "/app/software/bokeh/3.2.2-foss-2023a"

conflict("bokeh")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("matplotlib/3.7.2-gfbf-2023a") ) then
    load("matplotlib/3.7.2-gfbf-2023a")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.3.0") ) then
    load("PyYAML/6.0-GCCcore-12.3.0")
end

if not ( isloaded("Pillow-SIMD/9.5.0-GCCcore-12.3.0") ) then
    load("Pillow-SIMD/9.5.0-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

if not ( isloaded("tornado/6.3.2-GCCcore-12.3.0") ) then
    load("tornado/6.3.2-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBOKEH", root)
setenv("EBVERSIONBOKEH", "3.2.2")
setenv("EBDEVELBOKEH", pathJoin(root, "logs/bokeh-3.2.2-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTBOKEH", "contourpy-1.0.7,xyzservices-2023.7.0,bokeh-3.2.2")
