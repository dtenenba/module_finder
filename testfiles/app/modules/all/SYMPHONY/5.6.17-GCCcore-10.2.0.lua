help([==[

Description
===========
SYMPHONY is an open-source solver for mixed-integer linear programs (MILPs)
 written in C. It can be used in four different main modes.


More information
================
 - Homepage: https://github.com/coin-or/SYMPHONY/wiki
]==])

whatis([==[Description: SYMPHONY is an open-source solver for mixed-integer linear programs (MILPs)
 written in C. It can be used in four different main modes.]==])
whatis([==[Homepage: https://github.com/coin-or/SYMPHONY/wiki]==])
whatis([==[URL: https://github.com/coin-or/SYMPHONY/wiki]==])

local root = "/app/software/SYMPHONY/5.6.17-GCCcore-10.2.0"

conflict("SYMPHONY")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("GLPK/4.65-GCCcore-10.2.0") ) then
    load("GLPK/4.65-GCCcore-10.2.0")
end

if not ( isloaded("Cgl/0.60.3-GCCcore-10.2.0") ) then
    load("Cgl/0.60.3-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSYMPHONY", root)
setenv("EBVERSIONSYMPHONY", "5.6.17")
setenv("EBDEVELSYMPHONY", pathJoin(root, "logs/SYMPHONY-5.6.17-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
