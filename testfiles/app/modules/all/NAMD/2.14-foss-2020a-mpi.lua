help([==[

Description
===========
NAMD is a parallel molecular dynamics code designed for high-performance simulation of
 large biomolecular systems.


More information
================
 - Homepage: https://www.ks.uiuc.edu/Research/namd/
]==])

whatis([==[Description: NAMD is a parallel molecular dynamics code designed for high-performance simulation of
 large biomolecular systems.]==])
whatis([==[Homepage: https://www.ks.uiuc.edu/Research/namd/]==])
whatis([==[URL: https://www.ks.uiuc.edu/Research/namd/]==])

local root = "/app/software/NAMD/2.14-foss-2020a-mpi"

conflict("NAMD")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Tcl/8.6.10-GCCcore-9.3.0") ) then
    load("Tcl/8.6.10-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNAMD", root)
setenv("EBVERSIONNAMD", "2.14")
setenv("EBDEVELNAMD", pathJoin(root, "logs/NAMD-2.14-foss-2020a-mpi-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.4
