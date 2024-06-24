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

local root = "/app/software/MaxQuant/1.6.17.0-foss-2019b"

conflict("MaxQuant")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Mono/6.8.0.105-GCCcore-8.3.0") ) then
    load("Mono/6.8.0.105-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAXQUANT", root)
setenv("EBVERSIONMAXQUANT", "1.6.17.0")
setenv("EBDEVELMAXQUANT", pathJoin(root, "logs/MaxQuant-1.6.17.0-foss-2019b-easybuild-devel"))

set_alias("maxquantcmd", "mono $EBROOTMAXQUANT/bin/MaxQuantCmd.exe")
-- Built with EasyBuild version 4.3.1
