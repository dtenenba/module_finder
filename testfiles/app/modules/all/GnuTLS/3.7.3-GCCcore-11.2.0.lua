help([==[

Description
===========
GnuTLS is a secure communications library implementing the SSL, TLS
 and DTLS protocols and technologies around them. It provides a simple
 C language application programming interface (API) to access the secure
 communications protocols as well as APIs to parse and write X.509, PKCS #12,
 OpenPGP and other required structures. It is aimed to be portable
 and efficient with focus on security and interoperability.


More information
================
 - Homepage: https://www.gnutls.org
]==])

whatis([==[Description: GnuTLS is a secure communications library implementing the SSL, TLS
 and DTLS protocols and technologies around them. It provides a simple
 C language application programming interface (API) to access the secure
 communications protocols as well as APIs to parse and write X.509, PKCS #12,
 OpenPGP and other required structures. It is aimed to be portable
 and efficient with focus on security and interoperability.]==])
whatis([==[Homepage: https://www.gnutls.org]==])
whatis([==[URL: https://www.gnutls.org]==])

local root = "/app/software/GnuTLS/3.7.3-GCCcore-11.2.0"

conflict("GnuTLS")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

if not ( isloaded("nettle/3.7.3-GCCcore-11.2.0") ) then
    load("nettle/3.7.3-GCCcore-11.2.0")
end

if not ( isloaded("Guile/3.0.7-GCCcore-11.2.0") ) then
    load("Guile/3.0.7-GCCcore-11.2.0")
end

if not ( isloaded("libtasn1/4.18.0-GCCcore-11.2.0") ) then
    load("libtasn1/4.18.0-GCCcore-11.2.0")
end

if not ( isloaded("libidn/1.38-GCCcore-11.2.0") ) then
    load("libidn/1.38-GCCcore-11.2.0")
end

if not ( isloaded("p11-kit/0.24.1-GCCcore-11.2.0") ) then
    load("p11-kit/0.24.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGNUTLS", root)
setenv("EBVERSIONGNUTLS", "3.7.3")
setenv("EBDEVELGNUTLS", pathJoin(root, "logs/GnuTLS-3.7.3-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
