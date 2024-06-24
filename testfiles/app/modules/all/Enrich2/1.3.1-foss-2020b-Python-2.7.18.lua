help([==[

Description
===========
Enrich2 is a general software tool for processing, analyzing, and visualizing data
 from deep mutational scanning experiments.


More information
================
 - Homepage: https://github.com/FowlerLab/Enrich2


Included extensions
===================
Enrich2-1.3.1, patsy-0.5.1, statsmodels-0.9.0
]==])

whatis([==[Description: Enrich2 is a general software tool for processing, analyzing, and visualizing data
 from deep mutational scanning experiments.]==])
whatis([==[Homepage: https://github.com/FowlerLab/Enrich2]==])
whatis([==[URL: https://github.com/FowlerLab/Enrich2]==])
whatis([==[Extensions: Enrich2-1.3.1, patsy-0.5.1, statsmodels-0.9.0]==])

local root = "/app/software/Enrich2/1.3.1-foss-2020b-Python-2.7.18"

conflict("Enrich2")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/2.7.18-GCCcore-10.2.0") ) then
    load("Python/2.7.18-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b-Python-2.7.18") ) then
    load("SciPy-bundle/2020.11-foss-2020b-Python-2.7.18")
end

if not ( isloaded("matplotlib/2.2.5-foss-2020b-Python-2.7.18") ) then
    load("matplotlib/2.2.5-foss-2020b-Python-2.7.18")
end

if not ( isloaded("PyTables/3.5.2-foss-2020b-Python-2.7.18") ) then
    load("PyTables/3.5.2-foss-2020b-Python-2.7.18")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTENRICH2", root)
setenv("EBVERSIONENRICH2", "1.3.1")
setenv("EBDEVELENRICH2", pathJoin(root, "logs/Enrich2-1.3.1-foss-2020b-Python-2.7.18-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTENRICH2", "patsy-0.5.1,statsmodels-0.9.0,Enrich2-1.3.1")
