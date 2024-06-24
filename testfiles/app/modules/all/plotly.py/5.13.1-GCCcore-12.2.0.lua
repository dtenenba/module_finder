help([==[

Description
===========
An open-source, interactive graphing library for Python


More information
================
 - Homepage: https://plot.ly/python


Included extensions
===================
plotly-5.13.1, tenacity-8.2.2
]==])

whatis([==[Description: An open-source, interactive graphing library for Python]==])
whatis([==[Homepage: https://plot.ly/python]==])
whatis([==[URL: https://plot.ly/python]==])
whatis([==[Extensions: plotly-5.13.1, tenacity-8.2.2]==])

local root = "/app/software/plotly.py/5.13.1-GCCcore-12.2.0"

conflict("plotly.py")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPLOTLYPY", root)
setenv("EBVERSIONPLOTLYPY", "5.13.1")
setenv("EBDEVELPLOTLYPY", pathJoin(root, "logs/plotly.py-5.13.1-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPLOTLYPY", "tenacity-8.2.2,plotly-5.13.1")
