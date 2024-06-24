help([==[

Description
===========
FlashPCA performs fast principal component analysis (PCA) of single nucleotide
 polymorphism (SNP) data.


More information
================
 - Homepage: https://github.com/gabraham/flashpca
]==])

whatis([==[Description: FlashPCA performs fast principal component analysis (PCA) of single nucleotide
 polymorphism (SNP) data.]==])
whatis([==[Homepage: https://github.com/gabraham/flashpca]==])
whatis([==[URL: https://github.com/gabraham/flashpca]==])

local root = "/app/software/FlashPCA2/2.0-GCC-10.2.0"

conflict("FlashPCA2")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("SpectrA/0.9.0-GCC-10.2.0") ) then
    load("SpectrA/0.9.0-GCC-10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("PLINK2/20210701-linux_x86_64") ) then
    load("PLINK2/20210701-linux_x86_64")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLASHPCA2", root)
setenv("EBVERSIONFLASHPCA2", "2.0")
setenv("EBDEVELFLASHPCA2", pathJoin(root, "logs/FlashPCA2-2.0-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
