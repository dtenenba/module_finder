help([==[

Description
===========
The COIN-OR Cut Generation Library (Cgl) is a collection of cut generators that
 can be used with other COIN-OR packages that make use of cuts, such as, among others, the linear
 solver Clp or the mixed integer linear programming solvers Cbc or BCP. Cgl uses the abstract class
 OsiSolverInterface (see Osi) to use or communicate with a solver. It does not directly call
 a solver.


More information
================
 - Homepage: https://github.com/coin-or/Clg
]==])

whatis([==[Description: The COIN-OR Cut Generation Library (Cgl) is a collection of cut generators that
 can be used with other COIN-OR packages that make use of cuts, such as, among others, the linear
 solver Clp or the mixed integer linear programming solvers Cbc or BCP. Cgl uses the abstract class
 OsiSolverInterface (see Osi) to use or communicate with a solver. It does not directly call
 a solver.]==])
whatis([==[Homepage: https://github.com/coin-or/Clg]==])
whatis([==[URL: https://github.com/coin-or/Clg]==])

local root = "/app/software/Cgl/0.60.3-GCCcore-8.3.0"

conflict("Cgl")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("CoinUtils/2.11.3-GCCcore-8.3.0") ) then
    load("CoinUtils/2.11.3-GCCcore-8.3.0")
end

if not ( isloaded("Clp/1.17.6-GCCcore-8.3.0") ) then
    load("Clp/1.17.6-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCGL", root)
setenv("EBVERSIONCGL", "0.60.3")
setenv("EBDEVELCGL", pathJoin(root, "logs/Cgl-0.60.3-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
