help([==[

Description
===========
Statistical and novel interactive HTML plots for Python


More information
================
 - Homepage: https://github.com/bokeh/bokeh


Included extensions
===================
bokeh-2.0.2, tornado-6.0.4, typing-extensions-3.7.4.2
]==])

whatis([==[Description: Statistical and novel interactive HTML plots for Python]==])
whatis([==[Homepage: https://github.com/bokeh/bokeh]==])
whatis([==[URL: https://github.com/bokeh/bokeh]==])
whatis([==[Extensions: bokeh-2.0.2, tornado-6.0.4, typing-extensions-3.7.4.2]==])

local root = "/app/software/bokeh/2.0.2-foss-2020a-Python-3.8.2"

conflict("bokeh")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("PyYAML/5.3-GCCcore-9.3.0") ) then
    load("PyYAML/5.3-GCCcore-9.3.0")
end

if not ( isloaded("Pillow/7.0.0-GCCcore-9.3.0-Python-3.8.2") ) then
    load("Pillow/7.0.0-GCCcore-9.3.0-Python-3.8.2")
end

if not ( isloaded("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBOKEH", root)
setenv("EBVERSIONBOKEH", "2.0.2")
setenv("EBDEVELBOKEH", pathJoin(root, "logs/bokeh-2.0.2-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTBOKEH", "tornado-6.0.4,typing-extensions-3.7.4.2,bokeh-2.0.2")
