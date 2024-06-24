help([==[

Description
===========
Sequenza is a software for the estimation and quantification of purity/ploidy and copy number alteration in sequencing experiments of tumor samples. Sequenza-utils provide command lines programs to transform common NGS file format - such as BAM, pileup and VCF - to input files for the R package


More information
================
 - Homepage: https://sequenza-utils.readthedocs.io/
]==])

whatis([==[Description: Sequenza is a software for the estimation and quantification of purity/ploidy and copy number alteration in sequencing experiments of tumor samples. Sequenza-utils provide command lines programs to transform common NGS file format - such as BAM, pileup and VCF - to input files for the R package]==])
whatis([==[Homepage: https://sequenza-utils.readthedocs.io/]==])
whatis([==[URL: https://sequenza-utils.readthedocs.io/]==])

local root = "/app/software/sequenza-utils/3.0.0-GCCcore-8.3.0-Python-3.7.4"

conflict("sequenza-utils")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSEQUENZAMINUTILS", root)
setenv("EBVERSIONSEQUENZAMINUTILS", "3.0.0")
setenv("EBDEVELSEQUENZAMINUTILS", pathJoin(root, "logs/sequenza-utils-3.0.0-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
