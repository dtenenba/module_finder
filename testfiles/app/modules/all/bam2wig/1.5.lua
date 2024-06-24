help([==[

Description
===========
Conversion of a BAM alignment to wiggle and bigwig coverage files, with flexible reporting options.


More information
================
 - Homepage: https://github.com/MikeAxtell/bam2wig
]==])

whatis([==[Description: Conversion of a BAM alignment to wiggle and bigwig coverage files, with flexible reporting options.]==])
whatis([==[Homepage: https://github.com/MikeAxtell/bam2wig]==])

local root = "/app/software/bam2wig/1.5"

conflict("bam2wig")

setenv("EBROOTBAM2WIG", root)
setenv("EBVERSIONBAM2WIG", "1.5")
setenv("EBDEVELBAM2WIG", pathJoin(root, "/app/logs/bam2wig-1.5-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.8.0
