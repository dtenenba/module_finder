help([==[

Description
===========
Theano is a Python library that allows you to define, optimize,
and evaluate mathematical expressions involving multi-dimensional arrays efficiently.


More information
================
 - Homepage: https://deeplearning.net/software/theano
]==])

whatis([==[Description: Theano is a Python library that allows you to define, optimize,
and evaluate mathematical expressions involving multi-dimensional arrays efficiently.]==])
whatis([==[Homepage: https://deeplearning.net/software/theano]==])
whatis([==[URL: https://deeplearning.net/software/theano]==])

local root = "/app/software/Theano/1.0.4-foss-2019b-Python-3.7.4"

conflict("Theano")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTHEANO", root)
setenv("EBVERSIONTHEANO", "1.0.4")
setenv("EBDEVELTHEANO", pathJoin(root, "logs/Theano-1.0.4-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
