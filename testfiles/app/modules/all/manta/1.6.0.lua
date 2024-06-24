help([==[

Description
===========
Manta calls structural variants (SVs) and indels from mapped paired-end sequencing reads.
It is optimized for analysis of germline variation in small sets of individuals and 
somatic variation in tumor/normal sample pairs. Manta discovers, assembles and 
scores large-scale SVs, medium-sized indels and large insertions within a 
single efficient workflow.


More information
================
 - Homepage: https://github.com/Illumina/manta
]==])

whatis([==[Description:  
Manta calls structural variants (SVs) and indels from mapped paired-end sequencing reads.
It is optimized for analysis of germline variation in small sets of individuals and 
somatic variation in tumor/normal sample pairs. Manta discovers, assembles and 
scores large-scale SVs, medium-sized indels and large insertions within a 
single efficient workflow. 
]==])
whatis([==[Homepage: https://github.com/Illumina/manta]==])
whatis([==[URL: https://github.com/Illumina/manta]==])

local root = "/app/software/manta/1.6.0"

conflict("manta")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMANTA", root)
setenv("EBVERSIONMANTA", "1.6.0")
setenv("EBDEVELMANTA", pathJoin(root, "logs/manta-1.6.0-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "libexec"))
-- Built with EasyBuild version 4.2.1
