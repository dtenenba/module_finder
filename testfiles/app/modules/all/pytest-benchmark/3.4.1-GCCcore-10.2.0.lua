help([==[

Description
===========
A pytest fixture for benchmarking code.


More information
================
 - Homepage: https://github.com/ionelmc/pytest-benchmark


Included extensions
===================
py-cpuinfo-8.0.0, pytest-benchmark-3.4.1
]==])

whatis([==[Description: A pytest fixture for benchmarking code.]==])
whatis([==[Homepage: https://github.com/ionelmc/pytest-benchmark]==])
whatis([==[URL: https://github.com/ionelmc/pytest-benchmark]==])
whatis([==[Extensions: py-cpuinfo-8.0.0, pytest-benchmark-3.4.1]==])

local root = "/app/software/pytest-benchmark/3.4.1-GCCcore-10.2.0"

conflict("pytest-benchmark")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTESTMINBENCHMARK", root)
setenv("EBVERSIONPYTESTMINBENCHMARK", "3.4.1")
setenv("EBDEVELPYTESTMINBENCHMARK", pathJoin(root, "logs/pytest-benchmark-3.4.1-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTPYTESTMINBENCHMARK", "py-cpuinfo-8.0.0,pytest-benchmark-3.4.1")
