help([==[

Description
===========
STAR-Fusion uses the STAR aligner to identify candidate fusion transcripts
 supported by Illumina reads. STAR-Fusion further processes the output generated by the STAR aligner
 to map junction reads and spanning reads to a reference annotation set.


More information
================
 - Homepage: https://github.com/STAR-Fusion/STAR-Fusion
]==])

whatis([==[Description: STAR-Fusion uses the STAR aligner to identify candidate fusion transcripts
 supported by Illumina reads. STAR-Fusion further processes the output generated by the STAR aligner
 to map junction reads and spanning reads to a reference annotation set.]==])
whatis([==[Homepage: https://github.com/STAR-Fusion/STAR-Fusion]==])
whatis([==[URL: https://github.com/STAR-Fusion/STAR-Fusion]==])

local root = "/app/software/STAR-Fusion/1.12.0-foss-2022b"

conflict("STAR-Fusion")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Perl/5.36.0-GCCcore-12.2.0") ) then
    load("Perl/5.36.0-GCCcore-12.2.0")
end

if not ( isloaded("STAR/2.7.10b-GCC-12.2.0") ) then
    load("STAR/2.7.10b-GCC-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSTARMINFUSION", root)
setenv("EBVERSIONSTARMINFUSION", "1.12.0")
setenv("EBDEVELSTARMINFUSION", pathJoin(root, "logs/STAR-Fusion-1.12.0-foss-2022b-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.0