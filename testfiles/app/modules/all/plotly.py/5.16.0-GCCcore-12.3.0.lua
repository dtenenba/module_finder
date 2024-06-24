help([==[

Description
===========
An open-source, interactive graphing library for Python


More information
================
 - Homepage: https://plot.ly/python


Included extensions
===================
packaging-23.1, plotly-5.16.0, tenacity-8.2.3
]==])

whatis([==[Description: An open-source, interactive graphing library for Python]==])
whatis([==[Homepage: https://plot.ly/python]==])
whatis([==[URL: https://plot.ly/python]==])
whatis([==[Extensions: packaging-23.1, plotly-5.16.0, tenacity-8.2.3]==])

local root = "/app/software/plotly.py/5.16.0-GCCcore-12.3.0"

conflict("plotly.py")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPLOTLYPY", root)
setenv("EBVERSIONPLOTLYPY", "5.16.0")
setenv("EBDEVELPLOTLYPY", pathJoin(root, "logs/plotly.py-5.16.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTPLOTLYPY", "tenacity-8.2.3,packaging-23.1,plotly-5.16.0")
