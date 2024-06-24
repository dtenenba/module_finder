help([==[

Description
===========
MaxQuant is a quantitative proteomics software package designed for analyzing large
 mass-spectrometric data sets. It is specifically aimed at high-resolution MS data. Several labeling
 techniques as well as label-free quantification are supported.


More information
================
 - Homepage: https://www.maxquant.org/
]==])

whatis([==[Description: MaxQuant is a quantitative proteomics software package designed for analyzing large
 mass-spectrometric data sets. It is specifically aimed at high-resolution MS data. Several labeling
 techniques as well as label-free quantification are supported.]==])
whatis([==[Homepage: https://www.maxquant.org/]==])
whatis([==[URL: https://www.maxquant.org/]==])

local root = "/app/software/MaxQuant/2.4.9.0-foss-2022b"

conflict("MaxQuant")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Mono/6.12.0.199-GCCcore-12.2.0") ) then
    load("Mono/6.12.0.199-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAXQUANT", root)
setenv("EBVERSIONMAXQUANT", "2.4.9.0")
setenv("EBDEVELMAXQUANT", pathJoin(root, "logs/MaxQuant-2.4.9.0-foss-2022b-easybuild-devel"))

set_alias("maxquantcmd", "mono $EBROOTMAXQUANT/bin/MaxQuantCmd.exe")
-- Built with EasyBuild version 4.8.1
