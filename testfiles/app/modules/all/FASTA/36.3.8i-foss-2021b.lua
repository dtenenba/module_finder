help([==[

Description
===========
The FASTA programs find regions of local or global (new) similarity between
 protein or DNA sequences, either by searching Protein or DNA databases, or by identifying
 local duplications within a sequence.


More information
================
 - Homepage: http://fasta.bioch.virginia.edu
]==])

whatis([==[Description: The FASTA programs find regions of local or global (new) similarity between
 protein or DNA sequences, either by searching Protein or DNA databases, or by identifying
 local duplications within a sequence.]==])
whatis([==[Homepage: http://fasta.bioch.virginia.edu]==])
whatis([==[URL: http://fasta.bioch.virginia.edu]==])

local root = "/app/software/FASTA/36.3.8i-foss-2021b"

conflict("FASTA")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFASTA", root)
setenv("EBVERSIONFASTA", "36.3.8i")
setenv("EBDEVELFASTA", pathJoin(root, "logs/FASTA-36.3.8i-foss-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
