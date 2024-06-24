help([==[

Description
===========
Hypre is a library for solving large, sparse linear systems of equations on massively
 parallel computers. The problems of interest arise in the simulation codes being developed at LLNL
 and elsewhere to study physical phenomena in the defense, environmental, energy, and biological sciences.


More information
================
 - Homepage: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods
]==])

whatis([==[Description: Hypre is a library for solving large, sparse linear systems of equations on massively
 parallel computers. The problems of interest arise in the simulation codes being developed at LLNL
 and elsewhere to study physical phenomena in the defense, environmental, energy, and biological sciences.]==])
whatis([==[Homepage: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods]==])
whatis([==[URL: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods]==])

local root = "/app/software/Hypre/2.20.0-foss-2020b"

conflict("Hypre")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTHYPRE", root)
setenv("EBVERSIONHYPRE", "2.20.0")
setenv("EBDEVELHYPRE", pathJoin(root, "logs/Hypre-2.20.0-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
