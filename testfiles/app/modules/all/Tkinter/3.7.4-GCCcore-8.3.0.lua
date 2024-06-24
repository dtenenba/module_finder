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

local root = "/app/software/Tkinter/3.7.4-GCCcore-8.3.0"

conflict("Tkinter")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("Tk/8.6.9-GCCcore-8.3.0") ) then
    load("Tk/8.6.9-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTKINTER", root)
setenv("EBVERSIONTKINTER", "3.7.4")
setenv("EBDEVELTKINTER", pathJoin(root, "logs/Tkinter-3.7.4-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "logs/python"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7"))
-- Built with EasyBuild version 4.1.2
