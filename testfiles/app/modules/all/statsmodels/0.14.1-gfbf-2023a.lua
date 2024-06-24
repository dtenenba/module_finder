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
patsy-0.5.6, statsmodels-0.14.1
]==])

whatis([==[Description: Statsmodels is a Python module that allows users to explore data, estimate statistical models,
and perform statistical tests.]==])
whatis([==[Homepage: https://www.statsmodels.org/]==])
whatis([==[URL: https://www.statsmodels.org/]==])
whatis([==[Extensions: patsy-0.5.6, statsmodels-0.14.1]==])

local root = "/app/software/statsmodels/0.14.1-gfbf-2023a"

conflict("statsmodels")

if not ( isloaded("gfbf/2023a") ) then
    load("gfbf/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSTATSMODELS", root)
setenv("EBVERSIONSTATSMODELS", "0.14.1")
setenv("EBDEVELSTATSMODELS", pathJoin(root, "logs/statsmodels-0.14.1-gfbf-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTSTATSMODELS", "patsy-0.5.6,statsmodels-0.14.1")
