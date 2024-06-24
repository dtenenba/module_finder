help([==[

Description
===========
python-future is the missing compatibility layer between Python 2 and Python 3.


More information
================
 - Homepage: http://python-future.org/
]==])

whatis([==[Description: python-future is the missing compatibility layer between Python 2 and Python 3.]==])
whatis([==[Homepage: http://python-future.org/]==])
whatis([==[URL: http://python-future.org/]==])

local root = "/app/software/future/0.18.3-foss-2021b"

conflict("future")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFUTURE", root)
setenv("EBVERSIONFUTURE", "0.18.3")
setenv("EBDEVELFUTURE", pathJoin(root, "logs/future-0.18.3-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
