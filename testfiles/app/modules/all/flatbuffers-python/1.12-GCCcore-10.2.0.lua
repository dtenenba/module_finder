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

local root = "/app/software/flatbuffers-python/1.12-GCCcore-10.2.0"

conflict("flatbuffers-python")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("binutils/2.35-GCCcore-10.2.0") ) then
    load("binutils/2.35-GCCcore-10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFLATBUFFERSMINPYTHON", root)
setenv("EBVERSIONFLATBUFFERSMINPYTHON", "1.12")
setenv("EBDEVELFLATBUFFERSMINPYTHON", pathJoin(root, "logs/flatbuffers-python-1.12-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
