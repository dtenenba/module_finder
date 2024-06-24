help([==[

Description
===========
Pyomo is a Python-based open-source software package that supports a diverse set of optimization
 capabilities for formulating and analyzing optimization models.


More information
================
 - Homepage: http://www.pyomo.org/


Included extensions
===================
appdirs-1.4.3, ply-3.11, Pyomo-5.5.0, PyUtilib-5.6.3
]==])

whatis([==[Description:  Pyomo is a Python-based open-source software package that supports a diverse set of optimization
 capabilities for formulating and analyzing optimization models. ]==])
whatis([==[Homepage: http://www.pyomo.org/]==])
whatis([==[URL: http://www.pyomo.org/]==])
whatis([==[Extensions: appdirs-1.4.3, ply-3.11, Pyomo-5.5.0, PyUtilib-5.6.3]==])

local root = "/app/software/Pyomo/5.5.0-foss-2019b-Python-2.7.16"

conflict("Pyomo")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYOMO", root)
setenv("EBVERSIONPYOMO", "5.5.0")
setenv("EBDEVELPYOMO", pathJoin(root, "logs/Pyomo-5.5.0-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTPYOMO", "appdirs-1.4.3,ply-3.11,PyUtilib-5.6.3,Pyomo-5.5.0")
