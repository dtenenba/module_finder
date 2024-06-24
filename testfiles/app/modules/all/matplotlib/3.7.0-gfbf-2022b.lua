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
contourpy-1.0.7, Cycler-0.11.0, fonttools-4.38.0, kiwisolver-1.4.4,
matplotlib-3.7.0
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: contourpy-1.0.7, Cycler-0.11.0, fonttools-4.38.0, kiwisolver-1.4.4, matplotlib-3.7.0]==])

local root = "/app/software/matplotlib/3.7.0-gfbf-2022b"

conflict("matplotlib")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("libpng/1.6.38-GCCcore-12.2.0") ) then
    load("libpng/1.6.38-GCCcore-12.2.0")
end

if not ( isloaded("freetype/2.12.1-GCCcore-12.2.0") ) then
    load("freetype/2.12.1-GCCcore-12.2.0")
end

if not ( isloaded("Tkinter/3.10.8-GCCcore-12.2.0") ) then
    load("Tkinter/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("Pillow/9.4.0-GCCcore-12.2.0") ) then
    load("Pillow/9.4.0-GCCcore-12.2.0")
end

if not ( isloaded("Qhull/2020.2-GCCcore-12.2.0") ) then
    load("Qhull/2020.2-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "3.7.0")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "logs/matplotlib-3.7.0-gfbf-2022b-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.2
setenv("EBEXTSLISTMATPLOTLIB", "fonttools-4.38.0,Cycler-0.11.0,kiwisolver-1.4.4,contourpy-1.0.7,matplotlib-3.7.0")
