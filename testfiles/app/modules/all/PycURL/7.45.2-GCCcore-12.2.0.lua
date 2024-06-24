help([==[

Description
===========
PycURL is a Python interface to libcurl. PycURL can be used to fetch objects identified by a URL
 from a Python program, similar to the urllib Python module. PycURL is mature, very fast, and supports a lot of
 features.


More information
================
 - Homepage: http://pycurl.io/
]==])

whatis([==[Description: PycURL is a Python interface to libcurl. PycURL can be used to fetch objects identified by a URL
 from a Python program, similar to the urllib Python module. PycURL is mature, very fast, and supports a lot of
 features.]==])
whatis([==[Homepage: http://pycurl.io/]==])
whatis([==[URL: http://pycurl.io/]==])

local root = "/app/software/PycURL/7.45.2-GCCcore-12.2.0"

conflict("PycURL")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("cURL/7.86.0-GCCcore-12.2.0") ) then
    load("cURL/7.86.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYCURL", root)
setenv("EBVERSIONPYCURL", "7.45.2")
setenv("EBDEVELPYCURL", pathJoin(root, "logs/PycURL-7.45.2-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
