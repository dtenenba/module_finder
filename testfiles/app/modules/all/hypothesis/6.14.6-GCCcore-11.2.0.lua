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

local root = "/app/software/hypothesis/6.14.6-GCCcore-11.2.0"

conflict("hypothesis")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHYPOTHESIS", root)
setenv("EBVERSIONHYPOTHESIS", "6.14.6")
setenv("EBDEVELHYPOTHESIS", pathJoin(root, "logs/hypothesis-6.14.6-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
