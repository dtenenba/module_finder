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

local root = "/app/software/bsddb3/6.2.7-foss-2019b-Python-2.7.16"

conflict("bsddb3")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("DB/18.1.32-GCCcore-8.3.0") ) then
    load("DB/18.1.32-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
setenv("EBROOTBSDDB3", root)
setenv("EBVERSIONBSDDB3", "6.2.7")
setenv("EBDEVELBSDDB3", pathJoin(root, "logs/bsddb3-6.2.7-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.2.1