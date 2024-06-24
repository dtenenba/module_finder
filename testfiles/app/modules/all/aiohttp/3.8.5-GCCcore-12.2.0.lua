help([==[

Description
===========
Asynchronous HTTP client/server framework for asyncio and Python.


More information
================
 - Homepage: https://github.com/aio-libs/aiohttp


Included extensions
===================
aiohttp-3.8.5, aioredis-2.0.1, aiosignal-1.3.1, async-timeout-4.0.2,
frozenlist-1.4.0, multidict-6.0.4, yarl-1.9.2
]==])

whatis([==[Description: Asynchronous HTTP client/server framework for asyncio and Python.]==])
whatis([==[Homepage: https://github.com/aio-libs/aiohttp]==])
whatis([==[URL: https://github.com/aio-libs/aiohttp]==])
whatis([==[Extensions: aiohttp-3.8.5, aioredis-2.0.1, aiosignal-1.3.1, async-timeout-4.0.2, frozenlist-1.4.0, multidict-6.0.4, yarl-1.9.2]==])

local root = "/app/software/aiohttp/3.8.5-GCCcore-12.2.0"

conflict("aiohttp")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTAIOHTTP", root)
setenv("EBVERSIONAIOHTTP", "3.8.5")
setenv("EBDEVELAIOHTTP", pathJoin(root, "logs/aiohttp-3.8.5-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTAIOHTTP", "multidict-6.0.4,yarl-1.9.2,frozenlist-1.4.0,async-timeout-4.0.2,aiohttp-3.8.5,aioredis-2.0.1,aiosignal-1.3.1")
