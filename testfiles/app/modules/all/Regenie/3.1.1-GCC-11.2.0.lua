help([==[

Description
===========
Regenie is a C++ program for whole genome regression modelling of large genome-wide 
association studies.  It is developed and supported by a team of scientists at the Regeneron Genetics Center.


More information
================
 - Homepage: https://rgcgithub.github.io/regenie
]==])

whatis([==[Description: Regenie is a C++ program for whole genome regression modelling of large genome-wide 
association studies.  It is developed and supported by a team of scientists at the Regeneron Genetics Center.]==])
whatis([==[Homepage: https://rgcgithub.github.io/regenie]==])
whatis([==[URL: https://rgcgithub.github.io/regenie]==])

local root = "/app/software/Regenie/3.1.1-GCC-11.2.0"

conflict("Regenie")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Boost/1.55.0-GCC-11.2.0") ) then
    load("Boost/1.55.0-GCC-11.2.0")
end

if not ( isloaded("BGEN-enkre/1.1.7-GCC-11.2.0") ) then
    load("BGEN-enkre/1.1.7-GCC-11.2.0")
end

if not ( isloaded("OpenBLAS/0.3.18-GCC-11.2.0") ) then
    load("OpenBLAS/0.3.18-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTREGENIE", root)
setenv("EBVERSIONREGENIE", "3.1.1")
setenv("EBDEVELREGENIE", pathJoin(root, "logs/Regenie-3.1.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
