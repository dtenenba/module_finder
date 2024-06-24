help([==[

Description
===========
The pytest framework makes it easy to write small,
readable tests, and can scale to support complex functional testing for
applications and libraries.


More information
================
 - Homepage: https://docs.pytest.org/en/latest/


Included extensions
===================
elementpath-4.1.5, flit-core-3.9.0, hypothesis-6.88.1, pytest-7.4.2,
setuptools-scm-8.0.4, xmlschema-2.5.0
]==])

whatis([==[Description: The pytest framework makes it easy to write small,
readable tests, and can scale to support complex functional testing for
applications and libraries.]==])
whatis([==[Homepage: https://docs.pytest.org/en/latest/]==])
whatis([==[URL: https://docs.pytest.org/en/latest/]==])
whatis([==[Extensions: elementpath-4.1.5, flit-core-3.9.0, hypothesis-6.88.1, pytest-7.4.2, setuptools-scm-8.0.4, xmlschema-2.5.0]==])

local root = "/app/software/pytest/7.4.2-GCCcore-12.3.0"

conflict("pytest")

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
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTEST", root)
setenv("EBVERSIONPYTEST", "7.4.2")
setenv("EBDEVELPYTEST", pathJoin(root, "logs/pytest-7.4.2-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTPYTEST", "setuptools-scm-8.0.4,flit-core-3.9.0,hypothesis-6.88.1,elementpath-4.1.5,xmlschema-2.5.0,pytest-7.4.2")
