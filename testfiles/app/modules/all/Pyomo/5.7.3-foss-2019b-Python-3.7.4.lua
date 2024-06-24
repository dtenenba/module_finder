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
appdirs-1.4.4, ply-3.11, Pyomo-5.7.3, PyUtilib-6.0.0
]==])

whatis([==[Description:  Pyomo is a Python-based open-source software package that supports a diverse set of optimization
 capabilities for formulating and analyzing optimization models. ]==])
whatis([==[Homepage: http://www.pyomo.org/]==])
whatis([==[URL: http://www.pyomo.org/]==])
whatis([==[Extensions: appdirs-1.4.4, ply-3.11, Pyomo-5.7.3, PyUtilib-6.0.0]==])

local root = "/app/software/Pyomo/5.7.3-foss-2019b-Python-3.7.4"

conflict("Pyomo")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYOMO", root)
setenv("EBVERSIONPYOMO", "5.7.3")
setenv("EBDEVELPYOMO", pathJoin(root, "logs/Pyomo-5.7.3-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTPYOMO", "appdirs-1.4.4,ply-3.11,PyUtilib-6.0.0,Pyomo-5.7.3")
