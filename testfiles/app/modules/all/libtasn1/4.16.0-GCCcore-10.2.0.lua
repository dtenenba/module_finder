help([==[

Description
===========
Libtasn1 is the ASN.1 library used by GnuTLS, GNU Shishi and
 some other packages. It was written by Fabio Fiorina, and has been shipped as
 part of GnuTLS for some time but is now a proper GNU package.


More information
================
 - Homepage: https://www.gnu.org/software/libtasn1/
]==])

whatis([==[Description: Libtasn1 is the ASN.1 library used by GnuTLS, GNU Shishi and
 some other packages. It was written by Fabio Fiorina, and has been shipped as
 part of GnuTLS for some time but is now a proper GNU package.]==])
whatis([==[Homepage: https://www.gnu.org/software/libtasn1/]==])
whatis([==[URL: https://www.gnu.org/software/libtasn1/]==])

local root = "/app/software/libtasn1/4.16.0-GCCcore-10.2.0"

conflict("libtasn1")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBTASN1", root)
setenv("EBVERSIONLIBTASN1", "4.16.0")
setenv("EBDEVELLIBTASN1", pathJoin(root, "logs/libtasn1-4.16.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
