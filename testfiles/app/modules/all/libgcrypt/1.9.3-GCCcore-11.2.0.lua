help([==[

Description
===========
Libgcrypt is a general purpose cryptographic library originally based on code from GnuPG


More information
================
 - Homepage: https://gnupg.org/related_software/libgcrypt/index.html
]==])

whatis([==[Description: Libgcrypt is a general purpose cryptographic library originally based on code from GnuPG]==])
whatis([==[Homepage: https://gnupg.org/related_software/libgcrypt/index.html]==])
whatis([==[URL: https://gnupg.org/related_software/libgcrypt/index.html]==])

local root = "/app/software/libgcrypt/1.9.3-GCCcore-11.2.0"

conflict("libgcrypt")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("libgpg-error/1.42-GCCcore-11.2.0") ) then
    load("libgpg-error/1.42-GCCcore-11.2.0")
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
setenv("EBVERSIONLIBGCRYPT", "1.9.3")
setenv("EBDEVELLIBGCRYPT", pathJoin(root, "logs/libgcrypt-1.9.3-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
