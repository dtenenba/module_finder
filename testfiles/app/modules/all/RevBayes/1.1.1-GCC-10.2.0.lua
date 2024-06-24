help([==[

Description
===========
RevBayes provides an interactive environment for statistical computation in
 phylogenetics. It is primarily intended for modeling, simulation, and Bayesian inference in
 evolutionary biology, particularly phylogenetics.


More information
================
 - Homepage: https://revbayes.github.io/
]==])

whatis([==[Description: RevBayes provides an interactive environment for statistical computation in
 phylogenetics. It is primarily intended for modeling, simulation, and Bayesian inference in
 evolutionary biology, particularly phylogenetics.]==])
whatis([==[Homepage: https://revbayes.github.io/]==])
whatis([==[URL: https://revbayes.github.io/]==])

local root = "/app/software/RevBayes/1.1.1-GCC-10.2.0"

conflict("RevBayes")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTREVBAYES", root)
setenv("EBVERSIONREVBAYES", "1.1.1")
setenv("EBDEVELREVBAYES", pathJoin(root, "logs/RevBayes-1.1.1-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
