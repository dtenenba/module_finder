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

local root = "/app/software/Seaborn/0.13.2-foss-2023a"

conflict("Seaborn")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("matplotlib/3.7.2-gfbf-2023a") ) then
    load("matplotlib/3.7.2-gfbf-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEABORN", root)
setenv("EBVERSIONSEABORN", "0.13.2")
setenv("EBDEVELSEABORN", pathJoin(root, "logs/Seaborn-0.13.2-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
