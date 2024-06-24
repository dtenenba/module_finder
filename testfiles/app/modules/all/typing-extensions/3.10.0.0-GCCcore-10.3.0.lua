help([==[

Description
===========
Typing Extensions – Backported and Experimental Type Hints for Python


More information
================
 - Homepage: https://github.com/python/typing/blob/master/typing_extensions/README.rst
]==])

whatis([==[Description: Typing Extensions – Backported and Experimental Type Hints for Python]==])
whatis([==[Homepage: https://github.com/python/typing/blob/master/typing_extensions/README.rst]==])
whatis([==[URL: https://github.com/python/typing/blob/master/typing_extensions/README.rst]==])

local root = "/app/software/typing-extensions/3.10.0.0-GCCcore-10.3.0"

conflict("typing-extensions")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTYPINGMINEXTENSIONS", root)
setenv("EBVERSIONTYPINGMINEXTENSIONS", "3.10.0.0")
setenv("EBDEVELTYPINGMINEXTENSIONS", pathJoin(root, "logs/typing-extensions-3.10.0.0-GCCcore-10.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
