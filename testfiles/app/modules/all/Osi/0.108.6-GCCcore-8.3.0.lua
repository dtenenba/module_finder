help([==[

Description
===========
Osi (Open Solver Interface) provides an abstract base class to a generic linear
 programming (LP) solver, along with derived classes for specific solvers. Many applications
 may be able to use the Osi to insulate themselves from a specific LP solver.


More information
================
 - Homepage: https://github.com/coin-or/Osi
]==])

whatis([==[Description: Osi (Open Solver Interface) provides an abstract base class to a generic linear
 programming (LP) solver, along with derived classes for specific solvers. Many applications
 may be able to use the Osi to insulate themselves from a specific LP solver.]==])
whatis([==[Homepage: https://github.com/coin-or/Osi]==])
whatis([==[URL: https://github.com/coin-or/Osi]==])

local root = "/app/software/Osi/0.108.6-GCCcore-8.3.0"

conflict("Osi")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("CoinUtils/2.11.3-GCCcore-8.3.0") ) then
    load("CoinUtils/2.11.3-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOSI", root)
setenv("EBVERSIONOSI", "0.108.6")
setenv("EBDEVELOSI", pathJoin(root, "logs/Osi-0.108.6-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
