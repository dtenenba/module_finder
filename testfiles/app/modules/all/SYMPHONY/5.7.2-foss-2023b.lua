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

local root = "/app/software/SYMPHONY/5.7.2-foss-2023b"

conflict("SYMPHONY")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("CoinUtils/2.11.10-GCC-13.2.0") ) then
    load("CoinUtils/2.11.10-GCC-13.2.0")
end

if not ( isloaded("Osi/0.108.9-GCC-13.2.0") ) then
    load("Osi/0.108.9-GCC-13.2.0")
end

if not ( isloaded("Clp/1.17.9-foss-2023b") ) then
    load("Clp/1.17.9-foss-2023b")
end

if not ( isloaded("Cgl/0.60.8-foss-2023b") ) then
    load("Cgl/0.60.8-foss-2023b")
end

if not ( isloaded("GLPK/5.0-GCCcore-13.2.0") ) then
    load("GLPK/5.0-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSYMPHONY", root)
setenv("EBVERSIONSYMPHONY", "5.7.2")
setenv("EBDEVELSYMPHONY", pathJoin(root, "logs/SYMPHONY-5.7.2-foss-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
