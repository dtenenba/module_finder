help([==[

Description
===========
The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, full-featured,
 and Open Source toolchain implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1) 
 protocols as well as a full-strength general purpose cryptography library.


More information
================
 - Homepage: https://www.openssl.org/
]==])

whatis([==[Description: The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, full-featured,
 and Open Source toolchain implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1) 
 protocols as well as a full-strength general purpose cryptography library. ]==])
whatis([==[Homepage: https://www.openssl.org/]==])
whatis([==[URL: https://www.openssl.org/]==])

local root = "/app/software/OpenSSL/1.1.1k-GCCcore-11.2.0"

conflict("OpenSSL")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENSSL", root)
setenv("EBVERSIONOPENSSL", "1.1.1k")
setenv("EBDEVELOPENSSL", pathJoin(root, "logs/OpenSSL-1.1.1k-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
