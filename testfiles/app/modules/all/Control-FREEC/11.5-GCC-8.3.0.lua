help([==[

Description
===========
Copy number and genotype annotation from whole 
genome and whole exome sequencing data.


More information
================
 - Homepage: https://github.com/BoevaLab/FREEC
]==])

whatis([==[Description: Copy number and genotype annotation from whole 
genome and whole exome sequencing data.]==])
whatis([==[Homepage: https://github.com/BoevaLab/FREEC]==])
whatis([==[URL: https://github.com/BoevaLab/FREEC]==])

local root = "/app/software/Control-FREEC/11.5-GCC-8.3.0"

conflict("Control-FREEC")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCONTROLMINFREEC", root)
setenv("EBVERSIONCONTROLMINFREEC", "11.5")
setenv("EBDEVELCONTROLMINFREEC", pathJoin(root, "logs/Control-FREEC-11.5-GCC-8.3.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
