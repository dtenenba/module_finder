help([==[

Description
===========
Intervene a tool for intersection and visualization of multiple genomic region sets


More information
================
 - Homepage: https://intervene.readthedocs.io/en/latest/index.html


Included extensions
===================
seaborn-0.9.0
]==])

whatis([==[Description: Intervene a tool for intersection and visualization of multiple genomic region sets]==])
whatis([==[Homepage: https://intervene.readthedocs.io/en/latest/index.html]==])
whatis([==[URL: https://intervene.readthedocs.io/en/latest/index.html]==])
whatis([==[Extensions: seaborn-0.9.0]==])

local root = "/app/software/intervene/0.6.4-foss-2019b-Python-3.7.4"

conflict("intervene")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("pybedtools/0.8.0-foss-2019b-Python-3.7.4") ) then
    load("pybedtools/0.8.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTINTERVENE", root)
setenv("EBVERSIONINTERVENE", "0.6.4")
setenv("EBDEVELINTERVENE", pathJoin(root, "logs/intervene-0.6.4-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.0
setenv("EBEXTSLISTINTERVENE", "seaborn-0.9.0")
