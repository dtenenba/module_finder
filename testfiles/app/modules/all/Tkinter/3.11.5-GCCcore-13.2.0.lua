help([==[

Description
===========
Tkinter module, built with the Python buildsystem


More information
================
 - Homepage: https://python.org/
]==])

whatis([==[Description: Tkinter module, built with the Python buildsystem]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])

local root = "/app/software/Tkinter/3.11.5-GCCcore-13.2.0"

conflict("Tkinter")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("Tk/8.6.13-GCCcore-13.2.0") ) then
    load("Tk/8.6.13-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTKINTER", root)
setenv("EBVERSIONTKINTER", "3.11.5")
setenv("EBDEVELTKINTER", pathJoin(root, "logs/Tkinter-3.11.5-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1