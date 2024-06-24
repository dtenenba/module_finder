help([==[

Description
===========
An open-source, interactive graphing library for Python


More information
================
 - Homepage: https://plot.ly/python


Included extensions
===================
plotly-4.4.1, retrying-1.3.3
]==])

whatis([==[Description: An open-source, interactive graphing library for Python]==])
whatis([==[Homepage: https://plot.ly/python]==])
whatis([==[URL: https://plot.ly/python]==])
whatis([==[Extensions: plotly-4.4.1, retrying-1.3.3]==])

local root = "/app/software/plotly.py/4.4.1-foss-2019b"

conflict("plotly.py")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPLOTLYPY", root)
setenv("EBVERSIONPLOTLYPY", "4.4.1")
setenv("EBDEVELPLOTLYPY", pathJoin(root, "logs/plotly.py-4.4.1-foss-2019b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTPLOTLYPY", "retrying-1.3.3,plotly-4.4.1")
