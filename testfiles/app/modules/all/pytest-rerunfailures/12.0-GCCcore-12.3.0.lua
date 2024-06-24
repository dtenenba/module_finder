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

local root = "/app/software/pytest-rerunfailures/12.0-GCCcore-12.3.0"

conflict("pytest-rerunfailures")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYTESTMINRERUNFAILURES", root)
setenv("EBVERSIONPYTESTMINRERUNFAILURES", "12.0")
setenv("EBDEVELPYTESTMINRERUNFAILURES", pathJoin(root, "logs/pytest-rerunfailures-12.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
