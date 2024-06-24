help([==[

Description
===========
Mixed Integer Linear Programming (MILP) solver


More information
================
 - Homepage: https://sourceforge.net/projects/lpsolve/
]==])

whatis([==[Description: Mixed Integer Linear Programming (MILP) solver]==])
whatis([==[Homepage: https://sourceforge.net/projects/lpsolve/]==])
whatis([==[URL: https://sourceforge.net/projects/lpsolve/]==])

local root = "/app/software/lpsolve/5.5.2.11-GCC-10.2.0"

conflict("lpsolve")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLPSOLVE", root)
setenv("EBVERSIONLPSOLVE", "5.5.2.11")
setenv("EBDEVELLPSOLVE", pathJoin(root, "logs/lpsolve-5.5.2.11-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
