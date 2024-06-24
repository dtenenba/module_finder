help([==[

Description
===========
PySide6 is the official Python module from the Qt for Python project,
    which provides access to the complete Qt 6.5+ framework.


More information
================
 - Homepage: https://pypi.python.org/pypi/PySide6
]==])

whatis([==[Description: PySide6 is the official Python module from the Qt for Python project,
    which provides access to the complete Qt 6.5+ framework.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/PySide6]==])
whatis([==[URL: https://pypi.python.org/pypi/PySide6]==])

local root = "/app/software/PySide6/6.5.0-GCCcore-12.2.0"

conflict("PySide6")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYSIDE6", root)
setenv("EBVERSIONPYSIDE6", "6.5.0")
setenv("EBDEVELPYSIDE6", pathJoin(root, "logs/PySide6-6.5.0-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
