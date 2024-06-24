help([==[

Description
===========
An open-source, interactive graphing library for Python


More information
================
 - Homepage: https://plot.ly/python


Included extensions
===================
plotly-5.4.0, tenacity-8.0.1
]==])

whatis([==[Description: An open-source, interactive graphing library for Python]==])
whatis([==[Homepage: https://plot.ly/python]==])
whatis([==[URL: https://plot.ly/python]==])
whatis([==[Extensions: plotly-5.4.0, tenacity-8.0.1]==])

local root = "/app/software/plotly.py/5.4.0-GCCcore-11.2.0"

conflict("plotly.py")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPLOTLYPY", root)
setenv("EBVERSIONPLOTLYPY", "5.4.0")
setenv("EBDEVELPLOTLYPY", pathJoin(root, "logs/plotly.py-5.4.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
setenv("EBEXTSLISTPLOTLYPY", "tenacity-8.0.1,plotly-5.4.0")
