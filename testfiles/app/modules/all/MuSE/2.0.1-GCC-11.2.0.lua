help([==[

Description
===========
An accurate and ultra-fast somatic mutation calling tool for whole-genome sequencing (WGS)
 and whole-exome sequencing (WES) data from heterogeneous tumor samples.


More information
================
 - Homepage: https://github.com/wwylab/MuSE
]==])

whatis([==[Description: An accurate and ultra-fast somatic mutation calling tool for whole-genome sequencing (WGS)
 and whole-exome sequencing (WES) data from heterogeneous tumor samples.]==])
whatis([==[Homepage: https://github.com/wwylab/MuSE]==])
whatis([==[URL: https://github.com/wwylab/MuSE]==])

local root = "/app/software/MuSE/2.0.1-GCC-11.2.0"

conflict("MuSE")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Boost/1.70.0-GCC-11.2.0") ) then
    load("Boost/1.70.0-GCC-11.2.0")
end

if not ( isloaded("HTSlib/1.9-GCC-11.2.0") ) then
    load("HTSlib/1.9-GCC-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-11.2.0") ) then
    load("XZ/5.2.5-GCCcore-11.2.0")
end

if not ( isloaded("gperftools/2.9.1-GCCcore-11.2.0") ) then
    load("gperftools/2.9.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMUSE", root)
setenv("EBVERSIONMUSE", "2.0.1")
setenv("EBDEVELMUSE", pathJoin(root, "logs/MuSE-2.0.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
