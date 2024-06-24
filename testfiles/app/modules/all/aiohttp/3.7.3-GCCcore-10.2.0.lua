help([==[

Description
===========
Asynchronous HTTP client/server framework for asyncio and Python.


More information
================
 - Homepage: https://github.com/aio-libs/aiohttp


Included extensions
===================
aiohttp-3.7.3, aioredis-1.3.1, aiosignal-1.1.0, async-timeout-3.0.1, charset-
normalizer-2.0.8, frozenlist-1.1.0, hiredis-1.1.0, Jinja2-2.11.2,
multidict-5.0.2, yarl-1.6.3
]==])

whatis([==[Description: Asynchronous HTTP client/server framework for asyncio and Python.]==])
whatis([==[Homepage: https://github.com/aio-libs/aiohttp]==])
whatis([==[URL: https://github.com/aio-libs/aiohttp]==])
whatis([==[Extensions: aiohttp-3.7.3, aioredis-1.3.1, aiosignal-1.1.0, async-timeout-3.0.1, charset-normalizer-2.0.8, frozenlist-1.1.0, hiredis-1.1.0, Jinja2-2.11.2, multidict-5.0.2, yarl-1.6.3]==])

local root = "/app/software/aiohttp/3.7.3-GCCcore-10.2.0"

conflict("aiohttp")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("typing-extensions/3.7.4.3-GCCcore-10.2.0") ) then
    load("typing-extensions/3.7.4.3-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAIOHTTP", root)
setenv("EBVERSIONAIOHTTP", "3.7.3")
setenv("EBDEVELAIOHTTP", pathJoin(root, "logs/aiohttp-3.7.3-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTAIOHTTP", "charset-normalizer-2.0.8,multidict-5.0.2,async-timeout-3.0.1,yarl-1.6.3,frozenlist-1.1.0,aiosignal-1.1.0,aiohttp-3.7.3,Jinja2-2.11.2,hiredis-1.1.0,aioredis-1.3.1")
