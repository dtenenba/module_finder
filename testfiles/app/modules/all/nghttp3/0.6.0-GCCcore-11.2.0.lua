help([==[

Description
===========
nghttp3 is an implementation of RFC 9114 HTTP/3 
mapping over QUIC and RFC 9204 QPACK in C.
It does not depend on any particular QUIC transport implementation.


More information
================
 - Homepage: https://github.com/ngtcp2/nghttp3
]==])

whatis([==[Description:  nghttp3 is an implementation of RFC 9114 HTTP/3 
mapping over QUIC and RFC 9204 QPACK in C.
It does not depend on any particular QUIC transport implementation.]==])
whatis([==[Homepage: https://github.com/ngtcp2/nghttp3]==])
whatis([==[URL: https://github.com/ngtcp2/nghttp3]==])

local root = "/app/software/nghttp3/0.6.0-GCCcore-11.2.0"

conflict("nghttp3")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNGHTTP3", root)
setenv("EBVERSIONNGHTTP3", "0.6.0")
setenv("EBDEVELNGHTTP3", pathJoin(root, "logs/nghttp3-0.6.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
