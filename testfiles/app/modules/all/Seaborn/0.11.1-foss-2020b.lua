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

local root = "/app/software/Seaborn/0.11.1-foss-2020b"

conflict("Seaborn")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-foss-2020b") ) then
    load("matplotlib/3.3.3-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEABORN", root)
setenv("EBVERSIONSEABORN", "0.11.1")
setenv("EBDEVELSEABORN", pathJoin(root, "logs/Seaborn-0.11.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
