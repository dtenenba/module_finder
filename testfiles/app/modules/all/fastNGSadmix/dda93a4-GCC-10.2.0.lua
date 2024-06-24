help([==[

Description
===========
Program for infering admixture proportions and doing PCA with a single NGS
 sample. Inferences based on reference panel.


More information
================
 - Homepage: http://www.popgen.dk/software/index.php/FastNGSadmix
]==])

whatis([==[Description: Program for infering admixture proportions and doing PCA with a single NGS
 sample. Inferences based on reference panel.]==])
whatis([==[Homepage: http://www.popgen.dk/software/index.php/FastNGSadmix]==])
whatis([==[URL: http://www.popgen.dk/software/index.php/FastNGSadmix]==])

local root = "/app/software/fastNGSadmix/dda93a4-GCC-10.2.0"

conflict("fastNGSadmix")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFASTNGSADMIX", root)
setenv("EBVERSIONFASTNGSADMIX", "dda93a4")
setenv("EBDEVELFASTNGSADMIX", pathJoin(root, "logs/fastNGSadmix-dda93a4-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
