help([==[

Description
===========
ClustalW2 is a general purpose multiple sequence alignment program for DNA or proteins.


More information
================
 - Homepage: https://www.ebi.ac.uk/Tools/msa/clustalw2/
]==])

whatis([==[Description: ClustalW2 is a general purpose multiple sequence alignment program for DNA or proteins.]==])
whatis([==[Homepage: https://www.ebi.ac.uk/Tools/msa/clustalw2/]==])
whatis([==[URL: https://www.ebi.ac.uk/Tools/msa/clustalw2/]==])

local root = "/app/software/ClustalW2/2.1-foss-2019b"

conflict("ClustalW2")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLUSTALW2", root)
setenv("EBVERSIONCLUSTALW2", "2.1")
setenv("EBDEVELCLUSTALW2", pathJoin(root, "logs/ClustalW2-2.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
