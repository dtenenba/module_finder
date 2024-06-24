help([==[

Description
===========
Regenie is a C++ program for whole genome regression modelling of large genome-wide 
association studies.
It is developed and supported by a team of scientists at the Regeneron Genetics Center.


More information
================
 - Homepage: https://rgcgithub.github.io/regenie
]==])

whatis([==[Description: Regenie is a C++ program for whole genome regression modelling of large genome-wide 
association studies.
It is developed and supported by a team of scientists at the Regeneron Genetics Center.]==])
whatis([==[Homepage: https://rgcgithub.github.io/regenie]==])
whatis([==[URL: https://rgcgithub.github.io/regenie]==])

local root = "/app/software/Regenie/2.2.4-GCC-10.2.0"

conflict("Regenie")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("BGEN-enkre/1.1.7-GCC-10.2.0") ) then
    load("BGEN-enkre/1.1.7-GCC-10.2.0")
end

if not ( isloaded("OpenBLAS/0.3.12-GCC-10.2.0") ) then
    load("OpenBLAS/0.3.12-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTREGENIE", root)
setenv("EBVERSIONREGENIE", "2.2.4")
setenv("EBDEVELREGENIE", pathJoin(root, "logs/Regenie-2.2.4-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
