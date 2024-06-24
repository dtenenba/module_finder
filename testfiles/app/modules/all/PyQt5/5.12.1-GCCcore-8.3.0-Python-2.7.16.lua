help([==[

Description
===========
PyQt5 is a set of Python bindings for v5 of the Qt application framework from The Qt Company.
This bundle includes PyQtWebEngine, a set of Python bindings for The Qt Company’s Qt WebEngine framework.


More information
================
 - Homepage: https://www.riverbankcomputing.co.uk/software/pyqt
]==])

whatis([==[Description: PyQt5 is a set of Python bindings for v5 of the Qt application framework from The Qt Company.
This bundle includes PyQtWebEngine, a set of Python bindings for The Qt Company’s Qt WebEngine framework.]==])
whatis([==[Homepage: https://www.riverbankcomputing.co.uk/software/pyqt]==])
whatis([==[URL: https://www.riverbankcomputing.co.uk/software/pyqt]==])

local root = "/app/software/PyQt5/5.12.1-GCCcore-8.3.0-Python-2.7.16"

conflict("PyQt5")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("Qt5/5.12.3-GCCcore-8.3.0") ) then
    load("Qt5/5.12.3-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYQT5", root)
setenv("EBVERSIONPYQT5", "5.12.1")
setenv("EBDEVELPYQT5", pathJoin(root, "logs/PyQt5-5.12.1-GCCcore-8.3.0-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
prepend_path("QT_INSTALL_DATA", pathJoin(root, "qsci"))
prepend_path("QT_PLUGIN_PATH", pathJoin(root, "plugins"))
-- Built with EasyBuild version 4.3.4
