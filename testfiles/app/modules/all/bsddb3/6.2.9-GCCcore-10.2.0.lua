help([==[

Description
===========
bsddb3 is a nearly complete Python binding of the
Oracle/Sleepycat C API for the Database Environment, Database, Cursor,
Log Cursor, Sequence and Transaction objects.


More information
================
 - Homepage: https://pypi.org/project/bsddb3/
]==])

whatis([==[Description: bsddb3 is a nearly complete Python binding of the
Oracle/Sleepycat C API for the Database Environment, Database, Cursor,
Log Cursor, Sequence and Transaction objects.]==])
whatis([==[Homepage: https://pypi.org/project/bsddb3/]==])
whatis([==[URL: https://pypi.org/project/bsddb3/]==])

local root = "/app/software/bsddb3/6.2.9-GCCcore-10.2.0"

conflict("bsddb3")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
setenv("EBROOTBSDDB3", root)
setenv("EBVERSIONBSDDB3", "6.2.9")
setenv("EBDEVELBSDDB3", pathJoin(root, "logs/bsddb3-6.2.9-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
