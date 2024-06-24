help([==[

Description
===========
RAxML-NG is a phylogenetic tree inference tool which uses maximum-likelihood (ML)
 optimality criterion. Its search heuristic is based on iteratively performing a series of Subtree
 Pruning and Regrafting (SPR) moves, which allows to quickly navigate to the best-known ML tree.


More information
================
 - Homepage: https://github.com/amkozlov/raxml-ng
]==])

whatis([==[Description: RAxML-NG is a phylogenetic tree inference tool which uses maximum-likelihood (ML)
 optimality criterion. Its search heuristic is based on iteratively performing a series of Subtree
 Pruning and Regrafting (SPR) moves, which allows to quickly navigate to the best-known ML tree.]==])
whatis([==[Homepage: https://github.com/amkozlov/raxml-ng]==])
whatis([==[URL: https://github.com/amkozlov/raxml-ng]==])

local root = "/app/software/RAxML-NG/1.0.3-GCC-10.2.0"

conflict("RAxML-NG")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("GMP/6.2.0-GCCcore-10.2.0") ) then
    load("GMP/6.2.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRAXMLMINNG", root)
setenv("EBVERSIONRAXMLMINNG", "1.0.3")
setenv("EBDEVELRAXMLMINNG", pathJoin(root, "logs/RAxML-NG-1.0.3-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
