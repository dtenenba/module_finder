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

local root = "/app/software/Theano/1.1.2-foss-2020b-PyMC"

conflict("Theano")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTHEANO", root)
setenv("EBVERSIONTHEANO", "1.1.2")
setenv("EBDEVELTHEANO", pathJoin(root, "logs/Theano-1.1.2-foss-2020b-PyMC-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
