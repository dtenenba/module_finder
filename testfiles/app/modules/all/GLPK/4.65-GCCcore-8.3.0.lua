help([==[

Description
===========
The GLPK (GNU Linear Programming Kit) package is intended for
 solving large-scale linear programming (LP),
 mixed integer programming (MIP), and other related problems.
 It is a set of routines written in ANSI C 
 and organized in the form of a callable library.


More information
================
 - Homepage: https://www.gnu.org/software/glpk/
]==])

whatis([==[Description: The GLPK (GNU Linear Programming Kit) package is intended for
 solving large-scale linear programming (LP),
 mixed integer programming (MIP), and other related problems.
 It is a set of routines written in ANSI C 
 and organized in the form of a callable library.]==])
whatis([==[Homepage: https://www.gnu.org/software/glpk/]==])
whatis([==[URL: https://www.gnu.org/software/glpk/]==])

local root = "/app/software/GLPK/4.65-GCCcore-8.3.0"

conflict("GLPK")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("GMP/6.1.2-GCCcore-8.3.0") ) then
    load("GMP/6.1.2-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGLPK", root)
setenv("EBVERSIONGLPK", "4.65")
setenv("EBDEVELGLPK", pathJoin(root, "logs/GLPK-4.65-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
