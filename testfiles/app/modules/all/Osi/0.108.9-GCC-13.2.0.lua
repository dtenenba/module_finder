help([==[

Description
===========
Osi (Open Solver Interface) provides an abstract base class to a generic linear
programming (LP) solver, along with derived classes for specific solvers. Many
applications may be able to use the Osi to insulate themselves from a specific
LP solver. That is, programs written to the OSI standard may be linked to any
solver with an OSI interface and should produce correct results. The OSI has
been significantly extended compared to its first incarnation. Currently, the
OSI supports linear programming solvers and has rudimentary support for integer
programming.


More information
================
 - Homepage: https://github.com/coin-or/Osi
]==])

whatis([==[Description: Osi (Open Solver Interface) provides an abstract base class to a generic linear
programming (LP) solver, along with derived classes for specific solvers. Many
applications may be able to use the Osi to insulate themselves from a specific
LP solver. That is, programs written to the OSI standard may be linked to any
solver with an OSI interface and should produce correct results. The OSI has
been significantly extended compared to its first incarnation. Currently, the
OSI supports linear programming solvers and has rudimentary support for integer
programming.]==])
whatis([==[Homepage: https://github.com/coin-or/Osi]==])
whatis([==[URL: https://github.com/coin-or/Osi]==])

local root = "/app/software/Osi/0.108.9-GCC-13.2.0"

conflict("Osi")

if not ( isloaded("GCC/13.2.0") ) then
    load("GCC/13.2.0")
end

if not ( isloaded("CoinUtils/2.11.10-GCC-13.2.0") ) then
    load("CoinUtils/2.11.10-GCC-13.2.0")
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
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOSI", root)
setenv("EBVERSIONOSI", "0.108.9")
setenv("EBDEVELOSI", pathJoin(root, "logs/Osi-0.108.9-GCC-13.2.0-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/coin"))
-- Built with EasyBuild version 4.9.0
