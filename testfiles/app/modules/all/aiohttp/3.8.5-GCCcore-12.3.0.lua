help([==[

Description
===========
Asynchronous HTTP client/server framework for asyncio and Python.


More information
================
 - Homepage: https://github.com/aio-libs/aiohttp


Included extensions
===================
aiohttp-3.8.5, aiosignal-1.3.1, async-timeout-4.0.2, frozenlist-1.4.0,
multidict-6.0.4, yarl-1.9.2
]==])

whatis([==[Description: Asynchronous HTTP client/server framework for asyncio and Python.]==])
whatis([==[Homepage: https://github.com/aio-libs/aiohttp]==])
whatis([==[URL: https://github.com/aio-libs/aiohttp]==])
whatis([==[Extensions: aiohttp-3.8.5, aiosignal-1.3.1, async-timeout-4.0.2, frozenlist-1.4.0, multidict-6.0.4, yarl-1.9.2]==])

local root = "/app/software/aiohttp/3.8.5-GCCcore-12.3.0"

conflict("aiohttp")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTAIOHTTP", root)
setenv("EBVERSIONAIOHTTP", "3.8.5")
setenv("EBDEVELAIOHTTP", pathJoin(root, "logs/aiohttp-3.8.5-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTAIOHTTP", "multidict-6.0.4,yarl-1.9.2,frozenlist-1.4.0,async-timeout-4.0.2,aiohttp-3.8.5,aiosignal-1.3.1")
