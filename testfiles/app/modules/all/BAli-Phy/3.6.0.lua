help([==[

Description
===========
BAli-Phy estimates multiple sequence alignments and evolutionary trees from DNA, amino acid, 
or codon sequences.


More information
================
 - Homepage: http://www.bali-phy.org/
]==])

whatis([==[Description: BAli-Phy estimates multiple sequence alignments and evolutionary trees from DNA, amino acid, 
or codon sequences.]==])
whatis([==[Homepage: http://www.bali-phy.org/]==])
whatis([==[URL: http://www.bali-phy.org/]==])

local root = "/app/software/BAli-Phy/3.6.0"

conflict("BAli-Phy")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBALIMINPHY", root)
setenv("EBVERSIONBALIMINPHY", "3.6.0")
setenv("EBDEVELBALIMINPHY", pathJoin(root, "logs/BAli-Phy-3.6.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
