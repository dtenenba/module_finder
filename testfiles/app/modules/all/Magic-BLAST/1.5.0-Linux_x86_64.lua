help([==[

Description
===========
Magic-BLAST is a tool for mapping large next-generation RNA or DNA sequencing runs
 against a whole genome or transcriptome.


More information
================
 - Homepage: https://ncbi.github.io/magicblast/
]==])

whatis([==[Description: Magic-BLAST is a tool for mapping large next-generation RNA or DNA sequencing runs
 against a whole genome or transcriptome.]==])
whatis([==[Homepage: https://ncbi.github.io/magicblast/]==])
whatis([==[URL: https://ncbi.github.io/magicblast/]==])

local root = "/app/software/Magic-BLAST/1.5.0-Linux_x86_64"

conflict("Magic-BLAST")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAGICMINBLAST", root)
setenv("EBVERSIONMAGICMINBLAST", "1.5.0")
setenv("EBDEVELMAGICMINBLAST", pathJoin(root, "logs/Magic-BLAST-1.5.0-Linux_x86_64-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
