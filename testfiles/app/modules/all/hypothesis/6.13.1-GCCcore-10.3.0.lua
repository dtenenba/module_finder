help([==[

Description
===========
Hypothesis is an advanced testing library for Python. It lets you write tests which are parametrized
 by a source of examples, and then generates simple and comprehensible examples that make your tests fail. This lets
 you find more bugs in your code with less work.


More information
================
 - Homepage: https://github.com/HypothesisWorks/hypothesis
]==])

whatis([==[Description: Hypothesis is an advanced testing library for Python. It lets you write tests which are parametrized
 by a source of examples, and then generates simple and comprehensible examples that make your tests fail. This lets
 you find more bugs in your code with less work.]==])
whatis([==[Homepage: https://github.com/HypothesisWorks/hypothesis]==])
whatis([==[URL: https://github.com/HypothesisWorks/hypothesis]==])

local root = "/app/software/hypothesis/6.13.1-GCCcore-10.3.0"

conflict("hypothesis")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHYPOTHESIS", root)
setenv("EBVERSIONHYPOTHESIS", "6.13.1")
setenv("EBDEVELHYPOTHESIS", pathJoin(root, "logs/hypothesis-6.13.1-GCCcore-10.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
