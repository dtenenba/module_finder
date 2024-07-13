help([==[

Description
===========
SYMPHONY is an open-source solver for mixed-integer linear programs (MILPs) written in C.


More information
================
 - Homepage: https://github.com/coin-or/SYMPHONY/wiki
]==])

whatis([==[Description: SYMPHONY is an open-source solver for mixed-integer linear programs (MILPs) written in C.]==])
whatis([==[Homepage: https://github.com/coin-or/SYMPHONY/wiki]==])
whatis([==[URL: https://github.com/coin-or/SYMPHONY/wiki]==])

local root = "/app/software/SYMPHONY/5.6.18-foss-2021b"

conflict("SYMPHONY")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("CoinUtils/2.11.6-GCC-11.2.0") ) then
    load("CoinUtils/2.11.6-GCC-11.2.0")
end

if not ( isloaded("Osi/0.108.7-GCC-11.2.0") ) then
    load("Osi/0.108.7-GCC-11.2.0")
end

if not ( isloaded("Clp/1.17.7-foss-2021b") ) then
    load("Clp/1.17.7-foss-2021b")
end

if not ( isloaded("Cgl/0.60.5-foss-2021b") ) then
    load("Cgl/0.60.5-foss-2021b")
end

if not ( isloaded("GLPK/5.0-GCCcore-11.2.0") ) then
    load("GLPK/5.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSYMPHONY", root)
setenv("EBVERSIONSYMPHONY", "5.6.18")
setenv("EBDEVELSYMPHONY", pathJoin(root, "logs/SYMPHONY-5.6.18-foss-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.5.3