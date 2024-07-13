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

local root = "/app/software/future/0.16.0-foss-2019b-Python-3.7.4"

conflict("future")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFUTURE", root)
setenv("EBVERSIONFUTURE", "0.16.0")
setenv("EBDEVELFUTURE", pathJoin(root, "logs/future-0.16.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2