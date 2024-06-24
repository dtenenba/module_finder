help([==[

Description
===========
The GNU Project Debugger


More information
================
 - Homepage: https://www.gnu.org/software/gdb/gdb.html
]==])

whatis([==[Description: The GNU Project Debugger]==])
whatis([==[Homepage: https://www.gnu.org/software/gdb/gdb.html]==])
whatis([==[URL: https://www.gnu.org/software/gdb/gdb.html]==])

local root = "/app/software/GDB/9.1-GCCcore-8.3.0-Python-3.7.4"

conflict("GDB")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libreadline/8.0-GCCcore-8.3.0") ) then
    load("libreadline/8.0-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("expat/2.2.7-GCCcore-8.3.0") ) then
    load("expat/2.2.7-GCCcore-8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDB", root)
setenv("EBVERSIONGDB", "9.1")
setenv("EBDEVELGDB", pathJoin(root, "logs/GDB-9.1-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
