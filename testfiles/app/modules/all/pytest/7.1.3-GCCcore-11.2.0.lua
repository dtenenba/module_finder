help([==[

Description
===========
pytest: simple powerful testing with Python


More information
================
 - Homepage: https://pytest.org


Included extensions
===================
atomicwrites-1.4.1, attrs-22.1.0, iniconfig-1.1.1, more-itertools-8.14.0,
pathlib2-2.3.7.post1, pluggy-1.0.0, py-1.11.0, pytest-7.1.3, scandir-1.10.0,
toml-0.10.2, tomli-2.0.1
]==])

whatis([==[Description: pytest: simple powerful testing with Python]==])
whatis([==[Homepage: https://pytest.org]==])
whatis([==[URL: https://pytest.org]==])
whatis([==[Extensions: atomicwrites-1.4.1, attrs-22.1.0, iniconfig-1.1.1, more-itertools-8.14.0, pathlib2-2.3.7.post1, pluggy-1.0.0, py-1.11.0, pytest-7.1.3, scandir-1.10.0, toml-0.10.2, tomli-2.0.1]==])

local root = "/app/software/pytest/7.1.3-GCCcore-11.2.0"

conflict("pytest")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTEST", root)
setenv("EBVERSIONPYTEST", "7.1.3")
setenv("EBDEVELPYTEST", pathJoin(root, "logs/pytest-7.1.3-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPYTEST", "py-1.11.0,attrs-22.1.0,pluggy-1.0.0,atomicwrites-1.4.1,more-itertools-8.14.0,scandir-1.10.0,pathlib2-2.3.7.post1,iniconfig-1.1.1,toml-0.10.2,tomli-2.0.1,pytest-7.1.3")
