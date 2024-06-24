help([==[

Description
===========
Libgpg-error is a small library that defines common error values for all GnuPG components.


More information
================
 - Homepage: https://gnupg.org/related_software/libgpg-error/index.html
]==])

whatis([==[Description: Libgpg-error is a small library that defines common error values for all GnuPG components.]==])
whatis([==[Homepage: https://gnupg.org/related_software/libgpg-error/index.html]==])
whatis([==[URL: https://gnupg.org/related_software/libgpg-error/index.html]==])

local root = "/app/software/libgpg-error/1.41-GCCcore-10.2.0"

conflict("libgpg-error")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBGPGMINERROR", root)
setenv("EBVERSIONLIBGPGMINERROR", "1.41")
setenv("EBDEVELLIBGPGMINERROR", pathJoin(root, "logs/libgpg-error-1.41-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
