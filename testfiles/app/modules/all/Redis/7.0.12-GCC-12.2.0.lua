help([==[

Description
===========
Redis is an open source (BSD licensed), in-memory data structure store, used as
a database, cache, and message broker. Redis provides data structures such as
strings, hashes, lists, sets, sorted sets with range queries, bitmaps,
hyperloglogs, geospatial indexes, and streams. Redis has built-in replication,
Lua scripting, LRU eviction, transactions, and different levels of on-disk
persistence, and provides high availability via Redis Sentinel and automatic
partitioning with Redis Cluster.


More information
================
 - Homepage: https://redis.io
]==])

whatis([==[Description: Redis is an open source (BSD licensed), in-memory data structure store, used as
a database, cache, and message broker. Redis provides data structures such as
strings, hashes, lists, sets, sorted sets with range queries, bitmaps,
hyperloglogs, geospatial indexes, and streams. Redis has built-in replication,
Lua scripting, LRU eviction, transactions, and different levels of on-disk
persistence, and provides high availability via Redis Sentinel and automatic
partitioning with Redis Cluster.]==])
whatis([==[Homepage: https://redis.io]==])
whatis([==[URL: https://redis.io]==])

local root = "/app/software/Redis/7.0.12-GCC-12.2.0"

conflict("Redis")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTREDIS", root)
setenv("EBVERSIONREDIS", "7.0.12")
setenv("EBDEVELREDIS", pathJoin(root, "logs/Redis-7.0.12-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
