help([==[

Description
===========
Ncdu is a disk usage analyzer with an ncurses interface. It is designed to find space hogs on a remote server where you don't have an entire graphical setup available, but it is a useful tool even on regular desktop systems.


More information
================
 - Homepage: https://dev.yorhel.nl/ncdu
]==])

whatis([==[Description: Ncdu is a disk usage analyzer with an ncurses interface. It is designed to find space hogs on a remote server where you don't have an entire graphical setup available, but it is a useful tool even on regular desktop systems.]==])
whatis([==[Homepage: https://dev.yorhel.nl/ncdu]==])
whatis([==[URL: https://dev.yorhel.nl/ncdu]==])

local root = "/app/software/ncdu/1.15.1-GCCcore-8.3.0"

conflict("ncdu")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("binutils/2.32-GCCcore-8.3.0") ) then
    load("binutils/2.32-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNCDU", root)
setenv("EBVERSIONNCDU", "1.15.1")
setenv("EBDEVELNCDU", pathJoin(root, "logs/ncdu-1.15.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
