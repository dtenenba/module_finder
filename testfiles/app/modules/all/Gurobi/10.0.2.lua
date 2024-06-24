help([==[

Description
===========
The Gurobi Optimizer allows users to state their toughest
 business problems as mathematical models, and then automatically considers
 billions or even trillions of possible solutions to find the best one. Our
 solver can be used as both a decision-making assistant, to help guide the
 choices of a skilled expert, or as a fully automated tool to make decisions
 with no human intervention.


More information
================
 - Homepage: https://gurobi.com
]==])

whatis([==[Description: The Gurobi Optimizer allows users to state their toughest
 business problems as mathematical models, and then automatically considers
 billions or even trillions of possible solutions to find the best one. Our
 solver can be used as both a decision-making assistant, to help guide the
 choices of a skilled expert, or as a fully automated tool to make decisions
 with no human intervention.]==])
whatis([==[Homepage: https://gurobi.com]==])
whatis([==[URL: https://gurobi.com]==])

local root = "/app/software/Gurobi/10.0.2"

conflict("Gurobi")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGUROBI", root)
setenv("EBVERSIONGUROBI", "10.0.2")
setenv("EBDEVELGUROBI", pathJoin(root, "logs/Gurobi-10.0.2-easybuild-devel"))

setenv("GUROBI_HOME", "/app/software/Gurobi/10.0.2")
-- Built with EasyBuild version 4.7.2
