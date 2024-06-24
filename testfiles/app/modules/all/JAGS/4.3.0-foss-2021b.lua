help([==[

Description
===========
JAGS is Just Another Gibbs Sampler.  It is a program for analysis
 of Bayesian hierarchical models using Markov Chain Monte Carlo (MCMC) simulation


More information
================
 - Homepage: http://mcmc-jags.sourceforge.net/
]==])

whatis([==[Description: JAGS is Just Another Gibbs Sampler.  It is a program for analysis
 of Bayesian hierarchical models using Markov Chain Monte Carlo (MCMC) simulation  ]==])
whatis([==[Homepage: http://mcmc-jags.sourceforge.net/]==])
whatis([==[URL: http://mcmc-jags.sourceforge.net/]==])

local root = "/app/software/JAGS/4.3.0-foss-2021b"

conflict("JAGS")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJAGS", root)
setenv("EBVERSIONJAGS", "4.3.0")
setenv("EBDEVELJAGS", pathJoin(root, "logs/JAGS-4.3.0-foss-2021b-easybuild-devel"))

prepend_path("JAGS_INCLUDE", pathJoin(root, "include/JAGS"))
prepend_path("JAGS_LIB", pathJoin(root, "lib"))
-- Built with EasyBuild version 4.5.3
