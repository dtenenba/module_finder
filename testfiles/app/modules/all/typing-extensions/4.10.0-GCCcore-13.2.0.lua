help([==[

Description
===========
Typing Extensions - Backported and Experimental Type Hints for Python


More information
================
 - Homepage: https://github.com/python/typing_extensions
]==])

whatis([==[Description: Typing Extensions - Backported and Experimental Type Hints for Python]==])
whatis([==[Homepage: https://github.com/python/typing_extensions]==])
whatis([==[URL: https://github.com/python/typing_extensions]==])

local root = "/app/software/typing-extensions/4.10.0-GCCcore-13.2.0"

conflict("typing-extensions")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTYPINGMINEXTENSIONS", root)
setenv("EBVERSIONTYPINGMINEXTENSIONS", "4.10.0")
setenv("EBDEVELTYPINGMINEXTENSIONS", pathJoin(root, "logs/typing-extensions-4.10.0-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
