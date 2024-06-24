help([==[

Description
===========
SciPy is a collection of mathematical algorithms and convenience
 functions built on the Numpy extension for Python.


More information
================
 - Homepage: https://www.scipy.org
]==])

whatis([==[Description: SciPy is a collection of mathematical algorithms and convenience
 functions built on the Numpy extension for Python.]==])
whatis([==[Homepage: https://www.scipy.org]==])
whatis([==[URL: https://www.scipy.org]==])

local root = "/app/software/scipy/1.4.1-foss-2019b-Python-3.7.4"

conflict("scipy")

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
setenv("EBROOTSCIPY", root)
setenv("EBVERSIONSCIPY", "1.4.1")
setenv("EBDEVELSCIPY", pathJoin(root, "logs/scipy-1.4.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.2
