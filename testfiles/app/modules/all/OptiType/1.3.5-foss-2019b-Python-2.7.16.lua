help([==[

Description
===========
OptiType is a novel HLA genotyping algorithm based on integer linear programming,
 capable of producing accurate 4-digit HLA genotyping predictions from NGS data
 by simultaneously selecting all major and minor HLA Class I alleles.


More information
================
 - Homepage: https://github.com/FRED-2/OptiType
]==])

whatis([==[Description:  OptiType is a novel HLA genotyping algorithm based on integer linear programming,
 capable of producing accurate 4-digit HLA genotyping predictions from NGS data
 by simultaneously selecting all major and minor HLA Class I alleles. ]==])
whatis([==[Homepage: https://github.com/FRED-2/OptiType]==])
whatis([==[URL: https://github.com/FRED-2/OptiType]==])

local root = "/app/software/OptiType/1.3.5-foss-2019b-Python-2.7.16"

conflict("OptiType")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("Pyomo/5.5.0-foss-2019b-Python-2.7.16") ) then
    load("Pyomo/5.5.0-foss-2019b-Python-2.7.16")
end

if not ( isloaded("PyTables/3.5.2-foss-2019b-Python-2.7.16") ) then
    load("PyTables/3.5.2-foss-2019b-Python-2.7.16")
end

if not ( isloaded("Pysam/0.15.3-GCC-8.3.0-Python-2.7.16") ) then
    load("Pysam/0.15.3-GCC-8.3.0-Python-2.7.16")
end

if not ( isloaded("matplotlib/2.2.5-foss-2019b-Python-2.7.16") ) then
    load("matplotlib/2.2.5-foss-2019b-Python-2.7.16")
end

if not ( isloaded("Biopython/1.75-foss-2019b-Python-2.7.16") ) then
    load("Biopython/1.75-foss-2019b-Python-2.7.16")
end

if not ( isloaded("future/0.16.0-foss-2019b-Python-2.7.16") ) then
    load("future/0.16.0-foss-2019b-Python-2.7.16")
end

if not ( isloaded("GLPK/4.65-GCCcore-8.3.0") ) then
    load("GLPK/4.65-GCCcore-8.3.0")
end

if not ( isloaded("HDF5/1.10.5-gompi-2019b") ) then
    load("HDF5/1.10.5-gompi-2019b")
end

if not ( isloaded("SAMtools/1.10-GCC-8.3.0") ) then
    load("SAMtools/1.10-GCC-8.3.0")
end

if not ( isloaded("SeqAn/2.4.0-GCCcore-8.3.0") ) then
    load("SeqAn/2.4.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTOPTITYPE", root)
setenv("EBVERSIONOPTITYPE", "1.3.5")
setenv("EBDEVELOPTITYPE", pathJoin(root, "logs/OptiType-1.3.5-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.4
