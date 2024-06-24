help([==[

Description
===========
'Call it TCP/2. One More Time.'

ngtcp2 project is an effort to implement RFC9000 QUIC protocol.


More information
================
 - Homepage: https://github.com/ngtcp2/ngtcp2
]==])

whatis([==[Description: 
'Call it TCP/2. One More Time.'

ngtcp2 project is an effort to implement RFC9000 QUIC protocol.]==])
whatis([==[Homepage: https://github.com/ngtcp2/ngtcp2]==])
whatis([==[URL: https://github.com/ngtcp2/ngtcp2]==])

local root = "/app/software/ngtcp2/0.7.0-GCC-11.2.0"

conflict("ngtcp2")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("GnuTLS/3.7.3-GCCcore-11.2.0") ) then
    load("GnuTLS/3.7.3-GCCcore-11.2.0")
end

if not ( isloaded("nghttp3/0.6.0-GCCcore-11.2.0") ) then
    load("nghttp3/0.6.0-GCCcore-11.2.0")
end

if not ( isloaded("libev/4.33-GCC-11.2.0") ) then
    load("libev/4.33-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNGTCP2", root)
setenv("EBVERSIONNGTCP2", "0.7.0")
setenv("EBDEVELNGTCP2", pathJoin(root, "logs/ngtcp2-0.7.0-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
