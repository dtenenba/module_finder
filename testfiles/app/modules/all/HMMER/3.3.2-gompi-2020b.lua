help([==[

Description
===========
HMMER is used for searching sequence databases for homologs
 of protein sequences, and for making protein sequence alignments. It
 implements methods using probabilistic models called profile hidden Markov
 models (profile HMMs).  Compared to BLAST, FASTA, and other sequence
 alignment and database search tools based on older scoring methodology,
 HMMER aims to be significantly more accurate and more able to detect remote
 homologs because of the strength of its underlying mathematical models. In the
 past, this strength came at significant computational expense, but in the new
 HMMER3 project, HMMER is now essentially as fast as BLAST.


More information
================
 - Homepage: http://hmmer.org/
]==])

whatis([==[Description: HMMER is used for searching sequence databases for homologs
 of protein sequences, and for making protein sequence alignments. It
 implements methods using probabilistic models called profile hidden Markov
 models (profile HMMs).  Compared to BLAST, FASTA, and other sequence
 alignment and database search tools based on older scoring methodology,
 HMMER aims to be significantly more accurate and more able to detect remote
 homologs because of the strength of its underlying mathematical models. In the
 past, this strength came at significant computational expense, but in the new
 HMMER3 project, HMMER is now essentially as fast as BLAST.]==])
whatis([==[Homepage: http://hmmer.org/]==])
whatis([==[URL: http://hmmer.org/]==])

local root = "/app/software/HMMER/3.3.2-gompi-2020b"

conflict("HMMER")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHMMER", root)
setenv("EBVERSIONHMMER", "3.3.2")
setenv("EBDEVELHMMER", pathJoin(root, "logs/HMMER-3.3.2-gompi-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
