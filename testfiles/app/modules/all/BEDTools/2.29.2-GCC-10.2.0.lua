help([==[

Description
===========
The BEDTools utilities allow one to address common genomics tasks such as finding feature overlaps
 and computing coverage. The utilities are largely based on four widely-used file formats: BED, GFF/GTF, VCF,
 and SAM/BAM.


More information
================
 - Homepage: https://github.com/arq5x/bedtools2
]==])

whatis([==[Description: The BEDTools utilities allow one to address common genomics tasks such as finding feature overlaps
 and computing coverage. The utilities are largely based on four widely-used file formats: BED, GFF/GTF, VCF,
 and SAM/BAM.]==])
whatis([==[Homepage: https://github.com/arq5x/bedtools2]==])
whatis([==[URL: https://github.com/arq5x/bedtools2]==])

local root = "/app/software/BEDTools/2.29.2-GCC-10.2.0"

conflict("BEDTools")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

if not ( isloaded("BamTools/2.5.1-GCC-10.2.0") ) then
    load("BamTools/2.5.1-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBEDTOOLS", root)
setenv("EBVERSIONBEDTOOLS", "2.29.2")
setenv("EBDEVELBEDTOOLS", pathJoin(root, "logs/BEDTools-2.29.2-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
