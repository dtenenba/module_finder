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

local root = "/app/software/flatbuffers-python/23.5.26-GCCcore-12.3.0"

conflict("flatbuffers-python")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("binutils/2.40-GCCcore-12.3.0") ) then
    load("binutils/2.40-GCCcore-12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFLATBUFFERSMINPYTHON", root)
setenv("EBVERSIONFLATBUFFERSMINPYTHON", "23.5.26")
setenv("EBDEVELFLATBUFFERSMINPYTHON", pathJoin(root, "logs/flatbuffers-python-23.5.26-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
