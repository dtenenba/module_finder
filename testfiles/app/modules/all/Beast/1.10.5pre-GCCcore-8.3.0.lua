help([==[

Description
===========
BEAST is a cross-platform program for Bayesian MCMC analysis of molecular
 sequences. It is entirely orientated towards rooted, time-measured phylogenies inferred using
 strict or relaxed molecular clock models. It can be used as a method of reconstructing phylogenies
 but is also a framework for testing evolutionary hypotheses without conditioning on a single
 tree topology. BEAST uses MCMC to average over tree space, so that each tree is weighted
 proportional to its posterior probability.


More information
================
 - Homepage: https://beast.community
]==])

whatis([==[Description:  BEAST is a cross-platform program for Bayesian MCMC analysis of molecular
 sequences. It is entirely orientated towards rooted, time-measured phylogenies inferred using
 strict or relaxed molecular clock models. It can be used as a method of reconstructing phylogenies
 but is also a framework for testing evolutionary hypotheses without conditioning on a single
 tree topology. BEAST uses MCMC to average over tree space, so that each tree is weighted
 proportional to its posterior probability. ]==])
whatis([==[Homepage: https://beast.community]==])
whatis([==[URL: https://beast.community]==])

local root = "/app/software/Beast/1.10.5pre-GCCcore-8.3.0"

conflict("Beast")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("beagle-lib/3.1.2-GCCcore-8.3.0") ) then
    load("beagle-lib/3.1.2-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBEAST", root)
setenv("EBVERSIONBEAST", "1.10.5pre")
setenv("EBDEVELBEAST", pathJoin(root, "logs/Beast-1.10.5pre-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
