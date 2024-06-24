help([==[

Description
===========
Singularity is a portable application stack packaging and runtime utility.


More information
================
 - Homepage: https://singularity-tutorial.github.io/

]==])

whatis([==[Description: Singularity is a portable application stack packaging and runtime utility.]==])
whatis([==[Homepage: https://singularity-tutorial.github.io]==])

local root = "/app/software/Singularity/singularity-3.5.3"

conflict("Singularity")

if not isloaded("Go/1.14") then
    load("Go/1.14")
end

setenv("SINGULARITYROOT", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))

-- hand-built with vim by John Dey jfdey@fredhutch.org
