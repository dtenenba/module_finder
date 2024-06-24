help([==[

Description
===========
Scikit-Optimize, or skopt, is a simple and efficient library to minimize (very) expensive
 and noisy black-box functions.


More information
================
 - Homepage: https://scikit-optimize.github.io
]==])

whatis([==[Description: Scikit-Optimize, or skopt, is a simple and efficient library to minimize (very) expensive
 and noisy black-box functions.]==])
whatis([==[Homepage: https://scikit-optimize.github.io]==])
whatis([==[URL: https://scikit-optimize.github.io]==])

local root = "/app/software/scikit-optimize/0.9.0-foss-2021b"

conflict("scikit-optimize")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("pyaml/21.10.1-GCC-11.2.0") ) then
    load("pyaml/21.10.1-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSCIKITMINOPTIMIZE", root)
setenv("EBVERSIONSCIKITMINOPTIMIZE", "0.9.0")
setenv("EBDEVELSCIKITMINOPTIMIZE", pathJoin(root, "logs/scikit-optimize-0.9.0-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
