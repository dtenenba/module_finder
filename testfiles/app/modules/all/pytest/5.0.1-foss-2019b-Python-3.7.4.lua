help([==[

Description
===========
pytest: simple powerful testing with Python


More information
================
 - Homepage: http://pytest.org


Included extensions
===================
atomicwrites-1.3.0, attrs-19.1.0, importlib-metadata-0.19, more-
itertools-7.2.0, packaging-19.1, pluggy-0.12.0, py-1.8.0, pytest-5.0.1,
wcwidth-0.1.7, wcwidth-0.1.7
]==])

whatis([==[Description: pytest: simple powerful testing with Python]==])
whatis([==[Homepage: http://pytest.org]==])
whatis([==[URL: http://pytest.org]==])
whatis([==[Extensions: atomicwrites-1.3.0, attrs-19.1.0, importlib-metadata-0.19, more-itertools-7.2.0, packaging-19.1, pluggy-0.12.0, py-1.8.0, pytest-5.0.1, wcwidth-0.1.7, wcwidth-0.1.7]==])

local root = "/app/software/pytest/5.0.1-foss-2019b-Python-3.7.4"

conflict("pytest")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTEST", root)
setenv("EBVERSIONPYTEST", "5.0.1")
setenv("EBDEVELPYTEST", pathJoin(root, "logs/pytest-5.0.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTPYTEST", "py-1.8.0,packaging-19.1,attrs-19.1.0,wcwidth-0.1.7,atomicwrites-1.3.0,more-itertools-7.2.0,importlib-metadata-0.19,pluggy-0.12.0,wcwidth-0.1.7,pytest-5.0.1")
