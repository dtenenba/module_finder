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
patsy-0.5.3, statsmodels-0.14.0
]==])

whatis([==[Description: Statsmodels is a Python module that allows users to explore data, estimate statistical models,
and perform statistical tests.]==])
whatis([==[Homepage: https://www.statsmodels.org/]==])
whatis([==[URL: https://www.statsmodels.org/]==])
whatis([==[Extensions: patsy-0.5.3, statsmodels-0.14.0]==])

local root = "/app/software/statsmodels/0.14.0-gfbf-2022b"

conflict("statsmodels")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSTATSMODELS", root)
setenv("EBVERSIONSTATSMODELS", "0.14.0")
setenv("EBDEVELSTATSMODELS", pathJoin(root, "logs/statsmodels-0.14.0-gfbf-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTSTATSMODELS", "patsy-0.5.3,statsmodels-0.14.0")
