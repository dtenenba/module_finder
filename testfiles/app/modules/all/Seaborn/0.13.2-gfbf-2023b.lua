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

local root = "/app/software/Seaborn/0.13.2-gfbf-2023b"

conflict("Seaborn")

if not ( isloaded("gfbf/2023b") ) then
    load("gfbf/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("matplotlib/3.8.2-gfbf-2023b") ) then
    load("matplotlib/3.8.2-gfbf-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEABORN", root)
setenv("EBVERSIONSEABORN", "0.13.2")
setenv("EBDEVELSEABORN", pathJoin(root, "logs/Seaborn-0.13.2-gfbf-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
