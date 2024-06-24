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

local root = "/app/software/Seaborn/0.12.2-foss-2022b"

conflict("Seaborn")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("matplotlib/3.7.0-gfbf-2022b") ) then
    load("matplotlib/3.7.0-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEABORN", root)
setenv("EBVERSIONSEABORN", "0.12.2")
setenv("EBDEVELSEABORN", pathJoin(root, "logs/Seaborn-0.12.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
