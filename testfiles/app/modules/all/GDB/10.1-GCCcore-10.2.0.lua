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

local root = "/app/software/GDB/10.1-GCCcore-10.2.0"

conflict("GDB")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("libreadline/8.0-GCCcore-10.2.0") ) then
    load("libreadline/8.0-GCCcore-10.2.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-10.2.0") ) then
    load("ncurses/6.2-GCCcore-10.2.0")
end

if not ( isloaded("expat/2.2.9-GCCcore-10.2.0") ) then
    load("expat/2.2.9-GCCcore-10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("ISL/0.23-GCCcore-10.2.0") ) then
    load("ISL/0.23-GCCcore-10.2.0")
end

if not ( isloaded("MPC/1.2.1-GCCcore-10.2.0") ) then
    load("MPC/1.2.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDB", root)
setenv("EBVERSIONGDB", "10.1")
setenv("EBDEVELGDB", pathJoin(root, "logs/GDB-10.1-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
