help([==[

Description
===========
Tracer is a program for analysing the trace files generated
 by Bayesian MCMC runs (that is, the continuous parameter values sampled from
 the chain). It can be used to analyse runs of BEAST, MrBayes, LAMARC and
 possibly other MCMC programs.


More information
================
 - Homepage: http://beast.community/tracer
]==])

whatis([==[Description: Tracer is a program for analysing the trace files generated
 by Bayesian MCMC runs (that is, the continuous parameter values sampled from
 the chain). It can be used to analyse runs of BEAST, MrBayes, LAMARC and
 possibly other MCMC programs.]==])
whatis([==[Homepage: http://beast.community/tracer]==])

local root = "/app/software/Tracer/1.7.1"

conflict("Tracer")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTRACER", root)
setenv("EBVERSIONTRACER", "1.7.1")
setenv("EBDEVELTRACER", pathJoin(root, "/app/logs/Tracer-1.7.1-easybuild-devel"))

-- Built with EasyBuild version 3.9.0
