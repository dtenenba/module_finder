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
Cycler-0.10.0, kiwisolver-1.1.0, matplotlib-3.1.1
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: Cycler-0.10.0, kiwisolver-1.1.0, matplotlib-3.1.1]==])

local root = "/app/software/matplotlib/3.1.1-foss-2019b-Python-3.7.4"

conflict("matplotlib")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("freetype/2.10.1-GCCcore-8.3.0") ) then
    load("freetype/2.10.1-GCCcore-8.3.0")
end

if not ( isloaded("Tkinter/3.7.4-GCCcore-8.3.0") ) then
    load("Tkinter/3.7.4-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "3.1.1")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "logs/matplotlib-3.1.1-foss-2019b-Python-3.7.4-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTMATPLOTLIB", "Cycler-0.10.0,kiwisolver-1.1.0,matplotlib-3.1.1")
