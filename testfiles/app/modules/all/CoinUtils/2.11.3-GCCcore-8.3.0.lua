help([==[

Description
===========
CoinUtils (Coin-OR Utilities) is an open-source collection of classes
 and functions that are generally useful to more than one COIN-OR project. A collection
 of routines for manipulating sparse matrices and other matrix operations


More information
================
 - Homepage: https://www.coin-or.org/Doxygen/CoinUtils/
]==])

whatis([==[Description: CoinUtils (Coin-OR Utilities) is an open-source collection of classes
 and functions that are generally useful to more than one COIN-OR project. A collection
 of routines for manipulating sparse matrices and other matrix operations]==])
whatis([==[Homepage: https://www.coin-or.org/Doxygen/CoinUtils/]==])
whatis([==[URL: https://www.coin-or.org/Doxygen/CoinUtils/]==])

local root = "/app/software/CoinUtils/2.11.3-GCCcore-8.3.0"

conflict("CoinUtils")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCOINUTILS", root)
setenv("EBVERSIONCOINUTILS", "2.11.3")
setenv("EBDEVELCOINUTILS", pathJoin(root, "logs/CoinUtils-2.11.3-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
