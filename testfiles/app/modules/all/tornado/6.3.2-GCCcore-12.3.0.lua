help([==[

Description
===========
Tornado is a Python web framework and asynchronous networking library.


More information
================
 - Homepage: https://github.com/tornadoweb/tornado
]==])

whatis([==[Description: Tornado is a Python web framework and asynchronous networking library.]==])
whatis([==[Homepage: https://github.com/tornadoweb/tornado]==])
whatis([==[URL: https://github.com/tornadoweb/tornado]==])

local root = "/app/software/tornado/6.3.2-GCCcore-12.3.0"

conflict("tornado")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTORNADO", root)
setenv("EBVERSIONTORNADO", "6.3.2")
setenv("EBDEVELTORNADO", pathJoin(root, "logs/tornado-6.3.2-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
