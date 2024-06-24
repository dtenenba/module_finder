help([==[

Description
===========
Multiple terminals in one window. The goal of this project is to produce a useful tool for arranging terminals.


More information
================
 - Homepage: http://freedesktop.org/wiki/Software/intltool/
]==])

whatis([==[Description: Multiple terminals in one window. The goal of this project is to produce a useful tool for arranging terminals.]==])
whatis([==[Homepage: http://freedesktop.org/wiki/Software/intltool/]==])
whatis([==[URL: http://freedesktop.org/wiki/Software/intltool/]==])

local root = "/app/software/terminator/1.91-GCCcore-8.3.0-Python-2.7.16"

conflict("terminator")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("gettext/0.20.1-GCCcore-8.3.0") ) then
    load("gettext/0.20.1-GCCcore-8.3.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTERMINATOR", root)
setenv("EBVERSIONTERMINATOR", "1.91")
setenv("EBDEVELTERMINATOR", pathJoin(root, "logs/terminator-1.91-GCCcore-8.3.0-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.1.2
