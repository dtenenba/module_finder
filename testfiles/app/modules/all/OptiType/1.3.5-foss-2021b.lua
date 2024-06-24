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

local root = "/app/software/OptiType/1.3.5-foss-2021b"

conflict("OptiType")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Pyomo/6.4.4-foss-2021b") ) then
    load("Pyomo/6.4.4-foss-2021b")
end

if not ( isloaded("PyTables/3.6.1-foss-2021b") ) then
    load("PyTables/3.6.1-foss-2021b")
end

if not ( isloaded("Pysam/0.18.0-GCC-11.2.0") ) then
    load("Pysam/0.18.0-GCC-11.2.0")
end

if not ( isloaded("matplotlib/3.5.2-foss-2021b") ) then
    load("matplotlib/3.5.2-foss-2021b")
end

if not ( isloaded("future/0.18.3-foss-2021b") ) then
    load("future/0.18.3-foss-2021b")
end

if not ( isloaded("GLPK/5.0-GCCcore-11.2.0") ) then
    load("GLPK/5.0-GCCcore-11.2.0")
end

if not ( isloaded("HDF5/1.12.1-gompi-2021b") ) then
    load("HDF5/1.12.1-gompi-2021b")
end

if not ( isloaded("SAMtools/1.16.1-GCC-11.2.0") ) then
    load("SAMtools/1.16.1-GCC-11.2.0")
end

if not ( isloaded("SeqAn/2.4.0-GCCcore-11.2.0") ) then
    load("SeqAn/2.4.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTOPTITYPE", root)
setenv("EBVERSIONOPTITYPE", "1.3.5")
setenv("EBDEVELOPTITYPE", pathJoin(root, "logs/OptiType-1.3.5-foss-2021b-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.6.2
