help([==[

Description
===========
MrBayes is a program for Bayesian inference and model choice across
 a wide range of phylogenetic and evolutionary models.


More information
================
 - Homepage: https://nbisweden.github.io/MrBayes/
]==])

whatis([==[Description: MrBayes is a program for Bayesian inference and model choice across
 a wide range of phylogenetic and evolutionary models.]==])
whatis([==[Homepage: https://nbisweden.github.io/MrBayes/]==])
whatis([==[URL: https://nbisweden.github.io/MrBayes/]==])

local root = "/app/software/MrBayes/3.2.7a-gompi-2021b"

conflict("MrBayes")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("libreadline/8.1-GCCcore-11.2.0") ) then
    load("libreadline/8.1-GCCcore-11.2.0")
end

if not ( isloaded("beagle-lib/3.1.2-GCC-11.2.0") ) then
    load("beagle-lib/3.1.2-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMRBAYES", root)
setenv("EBVERSIONMRBAYES", "3.2.7a")
setenv("EBDEVELMRBAYES", pathJoin(root, "logs/MrBayes-3.2.7a-gompi-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
