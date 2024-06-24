help([==[

Description
===========
Statistical and novel interactive HTML plots for Python


More information
================
 - Homepage: https://github.com/bokeh/bokeh


Included extensions
===================
bokeh-2.2.3, tornado-6.1
]==])

whatis([==[Description: Statistical and novel interactive HTML plots for Python]==])
whatis([==[Homepage: https://github.com/bokeh/bokeh]==])
whatis([==[URL: https://github.com/bokeh/bokeh]==])
whatis([==[Extensions: bokeh-2.2.3, tornado-6.1]==])

local root = "/app/software/bokeh/2.2.3-foss-2020b"

conflict("bokeh")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("Pillow/8.0.1-GCCcore-10.2.0") ) then
    load("Pillow/8.0.1-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("typing-extensions/3.7.4.3-GCCcore-10.2.0") ) then
    load("typing-extensions/3.7.4.3-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBOKEH", root)
setenv("EBVERSIONBOKEH", "2.2.3")
setenv("EBDEVELBOKEH", pathJoin(root, "logs/bokeh-2.2.3-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTBOKEH", "tornado-6.1,bokeh-2.2.3")
