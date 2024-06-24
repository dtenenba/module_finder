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

-- build notes
-- do everyting as user scicomp
-- cd /app/software/Apptainer/
-- git clone https://github.com/apptainer/apptainer.git
-- mv apptainer apptainer-1.1.6
-- cd apptainer-1.1.6
-- git checkout v1.1.6
-- ml Go/1.18.1
-- ./mconfig --with-suid -b ./buildtree -p /app/software/Apptainer/1.1.6
-- cd buildtree
-- make
-- sudo make install
--  # make install must be run as root to create suid starter-suid file
-- cd /app/modules/all/Apptainer
-- vi 1.1.6.lua
-- create this beautiful lua file by hand


local root = "/app/software/Apptainer/1.1.6"

conflict("Apptainer")


setenv("APPTAINERROOT", root)
-- setenv("APPTAINERENV_PS1", "${distro}  [\u@\h \W]\$ ")
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))

-- handbuilt with vi by John Dey
