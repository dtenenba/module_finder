help([==[

Description
===========
Python Flatbuffers runtime library.


More information
================
 - Homepage: https://github.com/google/flatbuffers/
]==])

whatis([==[Description: Python Flatbuffers runtime library.]==])
whatis([==[Homepage: https://github.com/google/flatbuffers/]==])
whatis([==[URL: https://github.com/google/flatbuffers/]==])

local root = "/app/software/flatbuffers-python/2.0-GCCcore-11.3.0"

conflict("flatbuffers-python")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("binutils/2.38-GCCcore-11.3.0") ) then
    load("binutils/2.38-GCCcore-11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFLATBUFFERSMINPYTHON", root)
setenv("EBVERSIONFLATBUFFERSMINPYTHON", "2.0")
setenv("EBDEVELFLATBUFFERSMINPYTHON", pathJoin(root, "logs/flatbuffers-python-2.0-GCCcore-11.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
