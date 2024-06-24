help([==[

Description
===========
Pyomo is a Python-based open-source software package that supports a diverse set of optimization
 capabilities for formulating and analyzing optimization models.


More information
================
 - Homepage: https://www.pyomo.org/


Included extensions
===================
appdirs-1.4.4, ply-3.11, Pyomo-6.4.4, PyUtilib-6.0.0
]==])

whatis([==[Description:  Pyomo is a Python-based open-source software package that supports a diverse set of optimization
 capabilities for formulating and analyzing optimization models. ]==])
whatis([==[Homepage: https://www.pyomo.org/]==])
whatis([==[URL: https://www.pyomo.org/]==])
whatis([==[Extensions: appdirs-1.4.4, ply-3.11, Pyomo-6.4.4, PyUtilib-6.0.0]==])

local root = "/app/software/Pyomo/6.4.4-foss-2021b"

conflict("Pyomo")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYOMO", root)
setenv("EBVERSIONPYOMO", "6.4.4")
setenv("EBDEVELPYOMO", pathJoin(root, "logs/Pyomo-6.4.4-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTPYOMO", "appdirs-1.4.4,ply-3.11,PyUtilib-6.0.0,Pyomo-6.4.4")
