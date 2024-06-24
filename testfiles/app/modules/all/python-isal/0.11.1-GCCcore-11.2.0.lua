help([==[

Description
===========
Faster zlib and gzip compatible compression and decompression
 by providing python bindings for the isa-l library.


More information
================
 - Homepage: https://github.com/pycompression/python-isal
]==])

whatis([==[Description: Faster zlib and gzip compatible compression and decompression
 by providing python bindings for the isa-l library.
]==])
whatis([==[Homepage: https://github.com/pycompression/python-isal]==])
whatis([==[URL: https://github.com/pycompression/python-isal]==])

local root = "/app/software/python-isal/0.11.1-GCCcore-11.2.0"

conflict("python-isal")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("ISA-L/2.30.0-GCCcore-11.2.0") ) then
    load("ISA-L/2.30.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYTHONMINISAL", root)
setenv("EBVERSIONPYTHONMINISAL", "0.11.1")
setenv("EBDEVELPYTHONMINISAL", pathJoin(root, "logs/python-isal-0.11.1-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
