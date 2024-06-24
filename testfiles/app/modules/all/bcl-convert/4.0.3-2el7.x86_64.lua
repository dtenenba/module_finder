help([==[

Description
===========
The Illumina BCL Convert v4.0 is a standalone local software app that converts the
 Binary Base Call (BCL) files produced by Illumina sequencing systems to FASTQ files.


More information
================
 - Homepage: https://support.illumina.com/sequencing/sequencing_software/bcl-convert.html
]==])

whatis([==[Description: The Illumina BCL Convert v4.0 is a standalone local software app that converts the
 Binary Base Call (BCL) files produced by Illumina sequencing systems to FASTQ files.]==])
whatis([==[Homepage: https://support.illumina.com/sequencing/sequencing_software/bcl-convert.html]==])
whatis([==[URL: https://support.illumina.com/sequencing/sequencing_software/bcl-convert.html]==])

local root = "/app/software/bcl-convert/4.0.3-2el7.x86_64"

conflict("bcl-convert")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "usr/bin"))
setenv("EBROOTBCLMINCONVERT", root)
setenv("EBVERSIONBCLMINCONVERT", "4.0.3-2")
setenv("EBDEVELBCLMINCONVERT", pathJoin(root, "logs/bcl-convert-4.0.3-2el7.x86_64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
