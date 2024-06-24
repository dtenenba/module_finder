help([==[

Description
===========
GNU 'gettext' is an important step for the GNU Translation Project, as it is an asset on which we may
build many other steps. This package offers to programmers, translators, and even users, a well integrated set of tools
and documentation


More information
================
 - Homepage: https://www.gnu.org/software/gettext/
]==])

whatis([==[Description: GNU 'gettext' is an important step for the GNU Translation Project, as it is an asset on which we may
build many other steps. This package offers to programmers, translators, and even users, a well integrated set of tools
and documentation]==])
whatis([==[Homepage: https://www.gnu.org/software/gettext/]==])
whatis([==[URL: https://www.gnu.org/software/gettext/]==])

local root = "/app/software/gettext/0.21.1"

conflict("gettext")

if not ( isloaded("ncurses/6.3") ) then
    load("ncurses/6.3")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGETTEXT", root)
setenv("EBVERSIONGETTEXT", "0.21.1")
setenv("EBDEVELGETTEXT", pathJoin(root, "logs/gettext-0.21.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.0
