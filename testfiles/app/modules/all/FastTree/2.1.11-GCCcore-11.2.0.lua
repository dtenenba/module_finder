help([==[

Description
===========
FastTree infers approximately-maximum-likelihood phylogenetic trees from alignments of nucleotide
 or protein sequences. FastTree can handle alignments with up to a million of sequences in a reasonable amount of
 time and memory.


More information
================
 - Homepage: http://www.microbesonline.org/fasttree/
]==])

whatis([==[Description: FastTree infers approximately-maximum-likelihood phylogenetic trees from alignments of nucleotide
 or protein sequences. FastTree can handle alignments with up to a million of sequences in a reasonable amount of
 time and memory. ]==])
whatis([==[Homepage: http://www.microbesonline.org/fasttree/]==])
whatis([==[URL: http://www.microbesonline.org/fasttree/]==])

local root = "/app/software/FastTree/2.1.11-GCCcore-11.2.0"

conflict("FastTree")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFASTTREE", root)
setenv("EBVERSIONFASTTREE", "2.1.11")
setenv("EBDEVELFASTTREE", pathJoin(root, "logs/FastTree-2.1.11-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
