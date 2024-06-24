help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: https://python.org/
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])

local root = "/app/software/Python/3.10.8-GCCcore-12.2.0-bare"

conflict("Python")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("binutils/2.39-GCCcore-12.2.0") ) then
    load("binutils/2.39-GCCcore-12.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.2.0") ) then
    load("bzip2/1.0.8-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("libreadline/8.2-GCCcore-12.2.0") ) then
    load("libreadline/8.2-GCCcore-12.2.0")
end

if not ( isloaded("ncurses/6.3-GCCcore-12.2.0") ) then
    load("ncurses/6.3-GCCcore-12.2.0")
end

if not ( isloaded("SQLite/3.39.4-GCCcore-12.2.0") ) then
    load("SQLite/3.39.4-GCCcore-12.2.0")
end

if not ( isloaded("XZ/5.2.7-GCCcore-12.2.0") ) then
    load("XZ/5.2.7-GCCcore-12.2.0")
end

if not ( isloaded("libffi/3.4.4-GCCcore-12.2.0") ) then
    load("libffi/3.4.4-GCCcore-12.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "3.10.8")
setenv("EBDEVELPYTHON", pathJoin(root, "logs/Python-3.10.8-GCCcore-12.2.0-bare-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10"))
-- Built with EasyBuild version 4.7.0
