help([==[

Description
===========
Clp (Coin-or linear programming) is an open-source linear programming solver


More information
================
 - Homepage: https://github.com/coin-or/Clp
]==])

whatis([==[Description: Clp (Coin-or linear programming) is an open-source linear programming solver]==])
whatis([==[Homepage: https://github.com/coin-or/Clp]==])
whatis([==[URL: https://github.com/coin-or/Clp]==])

local root = "/app/software/Clp/1.17.6-GCCcore-8.3.0"

conflict("Clp")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("CoinUtils/2.11.3-GCCcore-8.3.0") ) then
    load("CoinUtils/2.11.3-GCCcore-8.3.0")
end

if not ( isloaded("Osi/0.108.6-GCCcore-8.3.0") ) then
    load("Osi/0.108.6-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLP", root)
setenv("EBVERSIONCLP", "1.17.6")
setenv("EBDEVELCLP", pathJoin(root, "logs/Clp-1.17.6-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
