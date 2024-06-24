help([==[

Description
===========
Libgpg-error is a small library that defines common error values for all GnuPG components.


More information
================
 - Homepage: https://gnupg.org/related_software/libgcrypt/index.html
]==])

whatis([==[Description: Libgpg-error is a small library that defines common error values for all GnuPG components.]==])
whatis([==[Homepage: https://gnupg.org/related_software/libgcrypt/index.html]==])
whatis([==[URL: https://gnupg.org/related_software/libgcrypt/index.html]==])

local root = "/app/software/libgcrypt/1.8.5-GCCcore-8.3.0"

conflict("libgcrypt")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("libgpg-error/1.38-GCCcore-8.3.0") ) then
    load("libgpg-error/1.38-GCCcore-8.3.0")
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
setenv("EBROOTLIBGCRYPT", root)
setenv("EBVERSIONLIBGCRYPT", "1.8.5")
setenv("EBDEVELLIBGCRYPT", pathJoin(root, "logs/libgcrypt-1.8.5-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
