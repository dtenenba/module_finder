help([==[

Description
===========
This is an implementation of the Hypertext Transfer Protocol version 2 in C.

The framing layer of HTTP/2 is implemented as a reusable C library. 
On top of that, we have implemented an HTTP/2 client, server and proxy. 
We have also developed load test and benchmarking tools for HTTP/2.

An HPACK encoder and decoder are available as a public API.


More information
================
 - Homepage: https://github.com/nghttp2/nghttp2
]==])

whatis([==[Description: 
This is an implementation of the Hypertext Transfer Protocol version 2 in C.

The framing layer of HTTP/2 is implemented as a reusable C library. 
On top of that, we have implemented an HTTP/2 client, server and proxy. 
We have also developed load test and benchmarking tools for HTTP/2.

An HPACK encoder and decoder are available as a public API.]==])
whatis([==[Homepage: https://github.com/nghttp2/nghttp2]==])
whatis([==[URL: https://github.com/nghttp2/nghttp2]==])

local root = "/app/software/nghttp2/1.48.0-GCC-11.2.0"

conflict("nghttp2")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("nghttp3/0.6.0-GCCcore-11.2.0") ) then
    load("nghttp3/0.6.0-GCCcore-11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

if not ( isloaded("Jansson/2.13.1-GCC-11.2.0") ) then
    load("Jansson/2.13.1-GCC-11.2.0")
end

if not ( isloaded("jemalloc/5.2.1-GCCcore-11.2.0") ) then
    load("jemalloc/5.2.1-GCCcore-11.2.0")
end

if not ( isloaded("ngtcp2/0.7.0-GCC-11.2.0") ) then
    load("ngtcp2/0.7.0-GCC-11.2.0")
end

if not ( isloaded("libevent/2.1.12-GCCcore-11.2.0") ) then
    load("libevent/2.1.12-GCCcore-11.2.0")
end

if not ( isloaded("libev/4.33-GCC-11.2.0") ) then
    load("libev/4.33-GCC-11.2.0")
end

if not ( isloaded("c-ares/1.18.1-GCCcore-11.2.0") ) then
    load("c-ares/1.18.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNGHTTP2", root)
setenv("EBVERSIONNGHTTP2", "1.48.0")
setenv("EBDEVELNGHTTP2", pathJoin(root, "logs/nghttp2-1.48.0-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
