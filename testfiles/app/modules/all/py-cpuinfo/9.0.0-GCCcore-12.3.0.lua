help([==[

Description
===========
py-cpuinfo gets CPU info with pure Python.


More information
================
 - Homepage: https://github.com/workhorsy/py-cpuinfo
]==])

whatis([==[Description: py-cpuinfo gets CPU info with pure Python.]==])
whatis([==[Homepage: https://github.com/workhorsy/py-cpuinfo]==])
whatis([==[URL: https://github.com/workhorsy/py-cpuinfo]==])

local root = "/app/software/py-cpuinfo/9.0.0-GCCcore-12.3.0"

conflict("py-cpuinfo")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYMINCPUINFO", root)
setenv("EBVERSIONPYMINCPUINFO", "9.0.0")
setenv("EBDEVELPYMINCPUINFO", pathJoin(root, "logs/py-cpuinfo-9.0.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
