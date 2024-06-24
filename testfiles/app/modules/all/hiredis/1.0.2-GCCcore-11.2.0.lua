help([==[

Description
===========
Hiredis is a minimalistic C client library for the Redis database.

It is minimalistic because it just adds minimal support for the protocol, 
but at the same time it uses a high level printf-alike API in order to 
make it much higher level than otherwise suggested by its minimal code base 
and the lack of explicit bindings for every Redis command.


More information
================
 - Homepage: https://github.com/redis/hiredis
]==])

whatis([==[Description: Hiredis is a minimalistic C client library for the Redis database.

It is minimalistic because it just adds minimal support for the protocol, 
but at the same time it uses a high level printf-alike API in order to 
make it much higher level than otherwise suggested by its minimal code base 
and the lack of explicit bindings for every Redis command.]==])
whatis([==[Homepage: https://github.com/redis/hiredis]==])
whatis([==[URL: https://github.com/redis/hiredis]==])

local root = "/app/software/hiredis/1.0.2-GCCcore-11.2.0"

conflict("hiredis")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHIREDIS", root)
setenv("EBVERSIONHIREDIS", "1.0.2")
setenv("EBDEVELHIREDIS", pathJoin(root, "logs/hiredis-1.0.2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
