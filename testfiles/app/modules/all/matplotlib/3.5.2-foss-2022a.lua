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
Cycler-0.11.0, fonttools-4.34.0, kiwisolver-1.4.3, matplotlib-3.5.2
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: Cycler-0.11.0, fonttools-4.34.0, kiwisolver-1.4.3, matplotlib-3.5.2]==])

local root = "/app/software/matplotlib/3.5.2-foss-2022a"

conflict("matplotlib")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.3.0") ) then
    load("libpng/1.6.37-GCCcore-11.3.0")
end

if not ( isloaded("freetype/2.12.1-GCCcore-11.3.0") ) then
    load("freetype/2.12.1-GCCcore-11.3.0")
end

if not ( isloaded("Tkinter/3.10.4-GCCcore-11.3.0") ) then
    load("Tkinter/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("Pillow/9.1.1-GCCcore-11.3.0") ) then
    load("Pillow/9.1.1-GCCcore-11.3.0")
end

if not ( isloaded("Qhull/2020.2-GCCcore-11.3.0") ) then
    load("Qhull/2020.2-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "3.5.2")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "logs/matplotlib-3.5.2-foss-2022a-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTMATPLOTLIB", "fonttools-4.34.0,Cycler-0.11.0,kiwisolver-1.4.3,matplotlib-3.5.2")
