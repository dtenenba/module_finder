help([==[

Description
===========
Cbc (Coin-or branch and cut) is an open-source mixed integer linear programming
solver written in C++. It can be used as a callable library or using a
stand-alone executable.


More information
================
 - Homepage: https://github.com/coin-or/Cbc
]==])

whatis([==[Description: Cbc (Coin-or branch and cut) is an open-source mixed integer linear programming
solver written in C++. It can be used as a callable library or using a
stand-alone executable.]==])
whatis([==[Homepage: https://github.com/coin-or/Cbc]==])
whatis([==[URL: https://github.com/coin-or/Cbc]==])

local root = "/app/software/Cbc/2.10.5-foss-2022b"

conflict("Cbc")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("METIS/5.1.0-GCCcore-12.2.0") ) then
    load("METIS/5.1.0-GCCcore-12.2.0")
end

if not ( isloaded("MUMPS/5.6.1-foss-2022b-metis") ) then
    load("MUMPS/5.6.1-foss-2022b-metis")
end

if not ( isloaded("CoinUtils/2.11.9-GCC-12.2.0") ) then
    load("CoinUtils/2.11.9-GCC-12.2.0")
end

if not ( isloaded("Osi/0.108.8-GCC-12.2.0") ) then
    load("Osi/0.108.8-GCC-12.2.0")
end

if not ( isloaded("Clp/1.17.8-foss-2022b") ) then
    load("Clp/1.17.8-foss-2022b")
end

if not ( isloaded("Cgl/0.60.7-foss-2022b") ) then
    load("Cgl/0.60.7-foss-2022b")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.2.0") ) then
    load("bzip2/1.0.8-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCBC", root)
setenv("EBVERSIONCBC", "2.10.5")
setenv("EBDEVELCBC", pathJoin(root, "logs/Cbc-2.10.5-foss-2022b-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/coin"))
-- Built with EasyBuild version 4.9.1
