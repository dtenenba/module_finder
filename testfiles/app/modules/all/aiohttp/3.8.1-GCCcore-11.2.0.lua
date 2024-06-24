help([==[

Description
===========
Asynchronous HTTP client/server framework for asyncio and Python.


More information
================
 - Homepage: https://github.com/aio-libs/aiohttp


Included extensions
===================
aiohttp-3.8.1, aiohttp-jinja2-1.5, aioredis-2.0.1, aiosignal-1.2.0,
aiosignal-1.2.0, async-timeout-4.0.2, frozenlist-1.2.0, hiredis-2.0.0,
multidict-5.2.0, yarl-1.7.2
]==])

whatis([==[Description: Asynchronous HTTP client/server framework for asyncio and Python.]==])
whatis([==[Homepage: https://github.com/aio-libs/aiohttp]==])
whatis([==[URL: https://github.com/aio-libs/aiohttp]==])
whatis([==[Extensions: aiohttp-3.8.1, aiohttp-jinja2-1.5, aioredis-2.0.1, aiosignal-1.2.0, aiosignal-1.2.0, async-timeout-4.0.2, frozenlist-1.2.0, hiredis-2.0.0, multidict-5.2.0, yarl-1.7.2]==])

local root = "/app/software/aiohttp/3.8.1-GCCcore-11.2.0"

conflict("aiohttp")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTAIOHTTP", root)
setenv("EBVERSIONAIOHTTP", "3.8.1")
setenv("EBDEVELAIOHTTP", pathJoin(root, "logs/aiohttp-3.8.1-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTAIOHTTP", "multidict-5.2.0,async-timeout-4.0.2,yarl-1.7.2,frozenlist-1.2.0,aiosignal-1.2.0,aiohttp-3.8.1,aiohttp-jinja2-1.5,hiredis-2.0.0,aioredis-2.0.1,aiosignal-1.2.0")
