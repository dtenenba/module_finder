help([==[

Description
===========
The Python interface to the Redis key-value store.


More information
================
 - Homepage: https://github.com/redis/redis-py


Included extensions
===================
async-timeout-4.0.2, redis-py-4.6.0, typing_extensions-4.7.1
]==])

whatis([==[Description: The Python interface to the Redis key-value store.]==])
whatis([==[Homepage: https://github.com/redis/redis-py]==])
whatis([==[URL: https://github.com/redis/redis-py]==])
whatis([==[Extensions: async-timeout-4.0.2, redis-py-4.6.0, typing_extensions-4.7.1]==])

local root = "/app/software/redis-py/4.6.0-foss-2022b"

conflict("redis-py")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("Redis/7.0.12-GCC-12.2.0") ) then
    load("Redis/7.0.12-GCC-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTREDISMINPY", root)
setenv("EBVERSIONREDISMINPY", "4.6.0")
setenv("EBDEVELREDISMINPY", pathJoin(root, "logs/redis-py-4.6.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTREDISMINPY", "typing_extensions-4.7.1,async-timeout-4.0.2,redis-py-4.6.0")
