help([==[

Description
===========
PuLP is an LP modeler written in Python. PuLP can generate MPS or LP files and
call GLPK, COIN-OR CLP/CBC, CPLEX, GUROBI, MOSEK, XPRESS, CHOCO, MIPCL, SCIP to
solve linear problems.


More information
================
 - Homepage: https://github.com/coin-or/pulp
]==])

whatis([==[Description: 
PuLP is an LP modeler written in Python. PuLP can generate MPS or LP files and
call GLPK, COIN-OR CLP/CBC, CPLEX, GUROBI, MOSEK, XPRESS, CHOCO, MIPCL, SCIP to
solve linear problems.
]==])
whatis([==[Homepage: https://github.com/coin-or/pulp]==])
whatis([==[URL: https://github.com/coin-or/pulp]==])

local root = "/app/software/PuLP/2.7.0-foss-2022b"

conflict("PuLP")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("GLPK/5.0-GCCcore-12.2.0") ) then
    load("GLPK/5.0-GCCcore-12.2.0")
end

if not ( isloaded("Cbc/2.10.5-foss-2022b") ) then
    load("Cbc/2.10.5-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPULP", root)
setenv("EBVERSIONPULP", "2.7.0")
setenv("EBDEVELPULP", pathJoin(root, "logs/PuLP-2.7.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
