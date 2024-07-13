help([==[

Description
===========
bcl2fastq Conversion Software both demultiplexes data and converts BCL files generated by
 Illumina sequencing systems to standard FASTQ file formats for downstream analysis.


More information
================
 - Homepage: https://support.illumina.com/sequencing/sequencing_software/bcl2fastq-conversion-software.html
]==])

whatis([==[Description: bcl2fastq Conversion Software both demultiplexes data and converts BCL files generated by
 Illumina sequencing systems to standard FASTQ file formats for downstream analysis.]==])
whatis([==[Homepage: https://support.illumina.com/sequencing/sequencing_software/bcl2fastq-conversion-software.html]==])
whatis([==[URL: https://support.illumina.com/sequencing/sequencing_software/bcl2fastq-conversion-software.html]==])

local root = "/app/software/bcl2fastq2/2.20.0-foss-2019b"

conflict("bcl2fastq2")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBCL2FASTQ2", root)
setenv("EBVERSIONBCL2FASTQ2", "2.20.0")
setenv("EBDEVELBCL2FASTQ2", pathJoin(root, "logs/bcl2fastq2-2.20.0-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2