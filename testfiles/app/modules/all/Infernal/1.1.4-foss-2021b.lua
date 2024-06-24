help([==[

Description
===========
Infernal ("INFERence of RNA ALignment") is for searching DNA sequence databases
 for RNA structure and sequence similarities.


More information
================
 - Homepage: http://eddylab.org/infernal/
]==])

whatis([==[Description: Infernal ("INFERence of RNA ALignment") is for searching DNA sequence databases
 for RNA structure and sequence similarities.]==])
whatis([==[Homepage: http://eddylab.org/infernal/]==])
whatis([==[URL: http://eddylab.org/infernal/]==])

local root = "/app/software/Infernal/1.1.4-foss-2021b"

conflict("Infernal")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTINFERNAL", root)
setenv("EBVERSIONINFERNAL", "1.1.4")
setenv("EBDEVELINFERNAL", pathJoin(root, "logs/Infernal-1.1.4-foss-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
