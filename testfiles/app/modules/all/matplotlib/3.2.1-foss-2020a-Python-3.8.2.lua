help([==[

Description
===========
matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.


More information
================
 - Homepage: https://matplotlib.org


Included extensions
===================
Cycler-0.10.0, kiwisolver-1.1.0, matplotlib-3.2.1
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: Cycler-0.10.0, kiwisolver-1.1.0, matplotlib-3.2.1]==])

local root = "/app/software/matplotlib/3.2.1-foss-2020a-Python-3.8.2"

conflict("matplotlib")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2")
end

if not ( isloaded("libpng/1.6.37-GCCcore-9.3.0") ) then
    load("libpng/1.6.37-GCCcore-9.3.0")
end

if not ( isloaded("freetype/2.10.1-GCCcore-9.3.0") ) then
    load("freetype/2.10.1-GCCcore-9.3.0")
end

if not ( isloaded("Tkinter/3.8.2-GCCcore-9.3.0") ) then
    load("Tkinter/3.8.2-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "3.2.1")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "logs/matplotlib-3.2.1-foss-2020a-Python-3.8.2-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTMATPLOTLIB", "Cycler-0.10.0,kiwisolver-1.1.0,matplotlib-3.2.1")
