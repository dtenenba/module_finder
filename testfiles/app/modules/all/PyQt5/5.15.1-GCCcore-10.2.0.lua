help([==[

Description
===========
PyQt5 is a set of Python bindings for v5 of the Qt application framework from The Qt Company.
This bundle includes PyQtWebEngine, a set of Python bindings for The Qt Company’s Qt WebEngine framework.


More information
================
 - Homepage: https://www.riverbankcomputing.com/software/pyqt
]==])

whatis([==[Description: PyQt5 is a set of Python bindings for v5 of the Qt application framework from The Qt Company.
This bundle includes PyQtWebEngine, a set of Python bindings for The Qt Company’s Qt WebEngine framework.]==])
whatis([==[Homepage: https://www.riverbankcomputing.com/software/pyqt]==])
whatis([==[URL: https://www.riverbankcomputing.com/software/pyqt]==])

local root = "/app/software/PyQt5/5.15.1-GCCcore-10.2.0"

conflict("PyQt5")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Qt5/5.14.2-GCCcore-10.2.0") ) then
    load("Qt5/5.14.2-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYQT5", root)
setenv("EBVERSIONPYQT5", "5.15.1")
setenv("EBDEVELPYQT5", pathJoin(root, "logs/PyQt5-5.15.1-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("QT_INSTALL_DATA", pathJoin(root, "qsci"))
-- Built with EasyBuild version 4.3.4
