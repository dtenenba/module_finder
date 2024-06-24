help([==[

Description
===========
Apptainer is a container platform.
Apptainer was created to run complex applications on HPC clusters in a simple, portable, and reproducible way.


More information
================
 - Homepage: https://apptainer.org/
]==])

whatis([==[Description: Apptainer is a portable application stack packaging and runtime utility.]==])
whatis([==[Homepage: https://apptainer.org/docs/user/1.0/index.html]==])

local root = "/app/software/Apptainer/1.1.4"

conflict("Apptainer")


setenv("APPTAINERROOT", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))

-- handbuilt with vi by John Dey
