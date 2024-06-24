help([==[

Description
===========
Automake: GNU Standards-compliant Makefile generator


More information
================
 - Homepage: https://www.gnu.org/software/automake/automake.html
]==])

whatis([==[Description: Automake: GNU Standards-compliant Makefile generator]==])
whatis([==[Homepage: https://www.gnu.org/software/automake/automake.html]==])
whatis([==[URL: https://www.gnu.org/software/automake/automake.html]==])

local root = "/app/software/Automake/1.16.5-GCCcore-12.3.0"

conflict("Automake")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Autoconf/2.71-GCCcore-12.3.0") ) then
    load("Autoconf/2.71-GCCcore-12.3.0")
end

if not ( isloaded("Perl/5.36.1-GCCcore-12.3.0") ) then
    load("Perl/5.36.1-GCCcore-12.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTAUTOMAKE", root)
setenv("EBVERSIONAUTOMAKE", "1.16.5")
setenv("EBDEVELAUTOMAKE", pathJoin(root, "logs/Automake-1.16.5-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
