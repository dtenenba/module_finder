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
Cycler-0.10.0, kiwisolver-1.3.0, matplotlib-3.3.3
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: Cycler-0.10.0, kiwisolver-1.3.0, matplotlib-3.3.3]==])

local root = "/app/software/matplotlib/3.3.3-fosscuda-2020b"

conflict("matplotlib")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-fosscuda-2020b") ) then
    load("SciPy-bundle/2020.11-fosscuda-2020b")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.2.0") ) then
    load("libpng/1.6.37-GCCcore-10.2.0")
end

if not ( isloaded("freetype/2.10.3-GCCcore-10.2.0") ) then
    load("freetype/2.10.3-GCCcore-10.2.0")
end

if not ( isloaded("Tkinter/3.8.6-GCCcore-10.2.0") ) then
    load("Tkinter/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Pillow/8.0.1-GCCcore-10.2.0") ) then
    load("Pillow/8.0.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "3.3.3")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "logs/matplotlib-3.3.3-fosscuda-2020b-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTMATPLOTLIB", "Cycler-0.10.0,kiwisolver-1.3.0,matplotlib-3.3.3")
