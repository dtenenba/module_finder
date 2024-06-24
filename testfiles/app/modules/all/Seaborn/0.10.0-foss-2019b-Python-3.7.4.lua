help([==[

Description
===========
Seaborn is a Python visualization library based on matplotlib.
 It provides a high-level interface for drawing attractive statistical graphics.


More information
================
 - Homepage: https://seaborn.pydata.org/
]==])

whatis([==[Description:  Seaborn is a Python visualization library based on matplotlib.
 It provides a high-level interface for drawing attractive statistical graphics. ]==])
whatis([==[Homepage: https://seaborn.pydata.org/]==])
whatis([==[URL: https://seaborn.pydata.org/]==])

local root = "/app/software/Seaborn/0.10.0-foss-2019b-Python-3.7.4"

conflict("Seaborn")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEABORN", root)
setenv("EBVERSIONSEABORN", "0.10.0")
setenv("EBDEVELSEABORN", pathJoin(root, "logs/Seaborn-0.10.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.3
