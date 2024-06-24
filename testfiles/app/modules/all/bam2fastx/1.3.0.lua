help([==[

Description
===========
Conversion of PacBio BAM files into gzipped fasta and fastq files, including splitting of barcoded data


More information
================
 - Homepage: https://github.com/pacificbiosciences/bam2fastx
]==])

whatis([==[Description: Conversion of PacBio BAM files into gzipped fasta and fastq files, including splitting of barcoded data]==])
whatis([==[Homepage: https://github.com/pacificbiosciences/bam2fastx]==])
whatis([==[URL: https://github.com/pacificbiosciences/bam2fastx]==])

local root = "/app/software/bam2fastx/1.3.0"

conflict("bam2fastx")

if not ( isloaded("Miniconda3/4.7.10") ) then
    load("Miniconda3/4.7.10")
end

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBAM2FASTX", root)
setenv("EBVERSIONBAM2FASTX", "1.3.0")
setenv("EBDEVELBAM2FASTX", pathJoin(root, "logs/bam2fastx-1.3.0-easybuild-devel"))

prepend_path("PATH", root)
setenv("CONDA_ENV", "/app/software/bam2fastx/1.3.0")
setenv("CONDA_PREFIX", "/app/software/bam2fastx/1.3.0")
setenv("CONDA_DEFAULT_ENV", "/app/software/bam2fastx/1.3.0")
-- Built with EasyBuild version 4.2.0
