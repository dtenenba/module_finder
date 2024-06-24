help([==[

Description
===========
Clp (Coin-or linear programming) is an open-source linear programming solver.
It is primarily meant to be used as a callable library, but a basic,
stand-alone executable version is also available.


More information
================
 - Homepage: https://github.com/coin-or/Clp
]==])

whatis([==[Description: Clp (Coin-or linear programming) is an open-source linear programming solver.
It is primarily meant to be used as a callable library, but a basic,
stand-alone executable version is also available.]==])
whatis([==[Homepage: https://github.com/coin-or/Clp]==])
whatis([==[URL: https://github.com/coin-or/Clp]==])

local root = "/app/software/Clp/1.17.9-foss-2023b"

conflict("Clp")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("METIS/5.1.0-GCCcore-13.2.0") ) then
    load("METIS/5.1.0-GCCcore-13.2.0")
end

if not ( isloaded("CoinUtils/2.11.10-GCC-13.2.0") ) then
    load("CoinUtils/2.11.10-GCC-13.2.0")
end

if not ( isloaded("Osi/0.108.9-GCC-13.2.0") ) then
    load("Osi/0.108.9-GCC-13.2.0")
end

if not ( isloaded("GLPK/5.0-GCCcore-13.2.0") ) then
    load("GLPK/5.0-GCCcore-13.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-13.2.0") ) then
    load("bzip2/1.0.8-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLP", root)
setenv("EBVERSIONCLP", "1.17.9")
setenv("EBDEVELCLP", pathJoin(root, "logs/Clp-1.17.9-foss-2023b-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/coin"))
-- Built with EasyBuild version 4.9.0
