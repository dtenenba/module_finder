help([==[

Description
===========
Statsmodels is a Python module that allows users to explore data, estimate statistical models,
and perform statistical tests.


More information
================
 - Homepage: https://www.statsmodels.org/


Included extensions
===================
patsy-0.5.1, statsmodels-0.12.1
]==])

whatis([==[Description: Statsmodels is a Python module that allows users to explore data, estimate statistical models,
and perform statistical tests.]==])
whatis([==[Homepage: https://www.statsmodels.org/]==])
whatis([==[URL: https://www.statsmodels.org/]==])
whatis([==[Extensions: patsy-0.5.1, statsmodels-0.12.1]==])

local root = "/app/software/statsmodels/0.12.1-foss-2020b"

conflict("statsmodels")

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
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSTATSMODELS", root)
setenv("EBVERSIONSTATSMODELS", "0.12.1")
setenv("EBDEVELSTATSMODELS", pathJoin(root, "logs/statsmodels-0.12.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
setenv("EBEXTSLISTSTATSMODELS", "patsy-0.5.1,statsmodels-0.12.1")
