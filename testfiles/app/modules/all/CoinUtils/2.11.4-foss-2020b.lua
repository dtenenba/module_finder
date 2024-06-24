help([==[

Description
===========
CoinUtils (Coin-OR Utilities) is an open-source collection of classes and
functions that are generally useful to more than one COIN-OR project.


More information
================
 - Homepage: https://github.com/coin-or/CoinUtils
]==])

whatis([==[Description: CoinUtils (Coin-OR Utilities) is an open-source collection of classes and
functions that are generally useful to more than one COIN-OR project.]==])
whatis([==[Homepage: https://github.com/coin-or/CoinUtils]==])
whatis([==[URL: https://github.com/coin-or/CoinUtils]==])

local root = "/app/software/CoinUtils/2.11.4-foss-2020b"

conflict("CoinUtils")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCOINUTILS", root)
setenv("EBVERSIONCOINUTILS", "2.11.4")
setenv("EBDEVELCOINUTILS", pathJoin(root, "logs/CoinUtils-2.11.4-foss-2020b-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/coin"))
-- Built with EasyBuild version 4.3.2
