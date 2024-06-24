help([==[

Description
===========
Statistical and novel interactive HTML plots for Python


More information
================
 - Homepage: https://github.com/bokeh/bokeh


Included extensions
===================
bokeh-2.0.1, tornado-6.0.3
]==])

whatis([==[Description: Statistical and novel interactive HTML plots for Python]==])
whatis([==[Homepage: https://github.com/bokeh/bokeh]==])
whatis([==[URL: https://github.com/bokeh/bokeh]==])
whatis([==[Extensions: bokeh-2.0.1, tornado-6.0.3]==])

local root = "/app/software/bokeh/2.0.1-foss-2019b-Python-3.7.4"

conflict("bokeh")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4")
end

if not ( isloaded("Pillow/6.2.1-GCCcore-8.3.0") ) then
    load("Pillow/6.2.1-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBOKEH", root)
setenv("EBVERSIONBOKEH", "2.0.1")
setenv("EBDEVELBOKEH", pathJoin(root, "logs/bokeh-2.0.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTBOKEH", "tornado-6.0.3,bokeh-2.0.1")
