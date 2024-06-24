help([==[

Description
===========
The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.


More information
================
 - Homepage: https://snakemake.readthedocs.io


Included extensions
===================
amply-0.1.5, ConfigArgParse-1.5.3, connection_pool-0.0.3, datrie-0.8.2,
dpath-2.0.6, plac-1.3.5, PuLP-2.7.0, PyYAML-6.0, ratelimiter-1.2.0.post0,
reretry-0.11.1, smart_open-6.2.0, snakemake-7.18.2, stopit-1.1.2,
throttler-1.2.1, toposort-1.7, wrapt-1.14.1, yte-1.5.1
]==])

whatis([==[Description: The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.]==])
whatis([==[Homepage: https://snakemake.readthedocs.io]==])
whatis([==[URL: https://snakemake.readthedocs.io]==])
whatis([==[Extensions: amply-0.1.5, ConfigArgParse-1.5.3, connection_pool-0.0.3, datrie-0.8.2, dpath-2.0.6, plac-1.3.5, PuLP-2.7.0, PyYAML-6.0, ratelimiter-1.2.0.post0, reretry-0.11.1, smart_open-6.2.0, snakemake-7.18.2, stopit-1.1.2, throttler-1.2.1, toposort-1.7, wrapt-1.14.1, yte-1.5.1]==])

local root = "/app/software/snakemake/7.18.2-foss-2021b"

conflict("snakemake")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("GitPython/3.1.24-GCCcore-11.2.0") ) then
    load("GitPython/3.1.24-GCCcore-11.2.0")
end

if not ( isloaded("IPython/7.26.0-GCCcore-11.2.0") ) then
    load("IPython/7.26.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSNAKEMAKE", root)
setenv("EBVERSIONSNAKEMAKE", "7.18.2")
setenv("EBDEVELSNAKEMAKE", pathJoin(root, "logs/snakemake-7.18.2-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
setenv("EBEXTSLISTSNAKEMAKE", "wrapt-1.14.1,ratelimiter-1.2.0.post0,ConfigArgParse-1.5.3,datrie-0.8.2,toposort-1.7,amply-0.1.5,PuLP-2.7.0,smart_open-6.2.0,connection_pool-0.0.3,stopit-1.1.2,reretry-0.11.1,throttler-1.2.1,dpath-2.0.6,plac-1.3.5,PyYAML-6.0,yte-1.5.1,snakemake-7.18.2")
