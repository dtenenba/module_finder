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
patsy-0.5.1, statsmodels-0.12.2
]==])

whatis([==[Description: Statsmodels is a Python module that allows users to explore data, estimate statistical models,
and perform statistical tests.]==])
whatis([==[Homepage: https://www.statsmodels.org/]==])
whatis([==[URL: https://www.statsmodels.org/]==])
whatis([==[Extensions: patsy-0.5.1, statsmodels-0.12.2]==])

local root = "/app/software/statsmodels/0.12.2-foss-2021a"

conflict("statsmodels")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSTATSMODELS", root)
setenv("EBVERSIONSTATSMODELS", "0.12.2")
setenv("EBDEVELSTATSMODELS", pathJoin(root, "logs/statsmodels-0.12.2-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTSTATSMODELS", "patsy-0.5.1,statsmodels-0.12.2")
