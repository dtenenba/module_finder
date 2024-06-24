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
backports.functools_lru_cache-1.6.1, Cycler-0.10.0, kiwisolver-1.1.0,
matplotlib-2.2.5, subprocess32-3.5.4
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: backports.functools_lru_cache-1.6.1, Cycler-0.10.0, kiwisolver-1.1.0, matplotlib-2.2.5, subprocess32-3.5.4]==])

local root = "/app/software/matplotlib/2.2.5-foss-2020b-Python-2.7.18"

conflict("matplotlib")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/2.7.18-GCCcore-10.2.0") ) then
    load("Python/2.7.18-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b-Python-2.7.18") ) then
    load("SciPy-bundle/2020.11-foss-2020b-Python-2.7.18")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.2.0") ) then
    load("libpng/1.6.37-GCCcore-10.2.0")
end

if not ( isloaded("freetype/2.10.3-GCCcore-10.2.0") ) then
    load("freetype/2.10.3-GCCcore-10.2.0")
end

if not ( isloaded("Tkinter/2.7.18-GCCcore-10.2.0") ) then
    load("Tkinter/2.7.18-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "2.2.5")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "logs/matplotlib-2.2.5-foss-2020b-Python-2.7.18-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTMATPLOTLIB", "Cycler-0.10.0,subprocess32-3.5.4,backports.functools_lru_cache-1.6.1,kiwisolver-1.1.0,matplotlib-2.2.5")
