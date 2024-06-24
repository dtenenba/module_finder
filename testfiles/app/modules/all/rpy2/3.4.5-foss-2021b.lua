help([==[

Description
===========
rpy2 is an interface to R running embedded in a Python process.


More information
================
 - Homepage: https://rpy2.bitbucket.io/


Included extensions
===================
backports-zoneinfo-0.2.1, cffi-1.15.0, pytz-deprecation-shim-0.1.0.post0,
rpy2-3.4.5, simplegeneric-0.8.1, tzdata-2021.5, tzlocal-2.1
]==])

whatis([==[Description: rpy2 is an interface to R running embedded in a Python process.]==])
whatis([==[Homepage: https://rpy2.bitbucket.io/]==])
whatis([==[URL: https://rpy2.bitbucket.io/]==])
whatis([==[Extensions: backports-zoneinfo-0.2.1, cffi-1.15.0, pytz-deprecation-shim-0.1.0.post0, rpy2-3.4.5, simplegeneric-0.8.1, tzdata-2021.5, tzlocal-2.1]==])

local root = "/app/software/rpy2/3.4.5-foss-2021b"

conflict("rpy2")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("R/4.1.2-foss-2021b") ) then
    load("R/4.1.2-foss-2021b")
end

if not ( isloaded("IPython/7.26.0-GCCcore-11.2.0") ) then
    load("IPython/7.26.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTRPY2", root)
setenv("EBVERSIONRPY2", "3.4.5")
setenv("EBDEVELRPY2", pathJoin(root, "logs/rpy2-3.4.5-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTRPY2", "simplegeneric-0.8.1,tzlocal-2.1,cffi-1.15.0,tzdata-2021.5,backports-zoneinfo-0.2.1,pytz-deprecation-shim-0.1.0.post0,rpy2-3.4.5")
