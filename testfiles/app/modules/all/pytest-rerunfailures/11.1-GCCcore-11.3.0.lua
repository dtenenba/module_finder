help([==[

Description
===========
pytest plugin to re-run tests to eliminate flaky failures.


More information
================
 - Homepage: https://github.com/pytest-dev/pytest-rerunfailures
]==])

whatis([==[Description: pytest plugin to re-run tests to eliminate flaky failures.]==])
whatis([==[Homepage: https://github.com/pytest-dev/pytest-rerunfailures]==])
whatis([==[URL: https://github.com/pytest-dev/pytest-rerunfailures]==])

local root = "/app/software/pytest-rerunfailures/11.1-GCCcore-11.3.0"

conflict("pytest-rerunfailures")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYTESTMINRERUNFAILURES", root)
setenv("EBVERSIONPYTESTMINRERUNFAILURES", "11.1")
setenv("EBDEVELPYTESTMINRERUNFAILURES", pathJoin(root, "logs/pytest-rerunfailures-11.1-GCCcore-11.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
