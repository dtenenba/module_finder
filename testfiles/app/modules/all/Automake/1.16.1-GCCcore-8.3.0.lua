help([==[

Description
===========
Automake: GNU Standards-compliant Makefile generator


More information
================
 - Homepage: http://www.gnu.org/software/automake/automake.html
]==])

whatis([==[Description: Automake: GNU Standards-compliant Makefile generator]==])
whatis([==[Homepage: http://www.gnu.org/software/automake/automake.html]==])
whatis([==[URL: http://www.gnu.org/software/automake/automake.html]==])

local root = "/app/software/Automake/1.16.1-GCCcore-8.3.0"

conflict("Automake")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Autoconf/2.69-GCCcore-8.3.0") ) then
    load("Autoconf/2.69-GCCcore-8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTAUTOMAKE", root)
setenv("EBVERSIONAUTOMAKE", "1.16.1")
setenv("EBDEVELAUTOMAKE", pathJoin(root, "logs/Automake-1.16.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
