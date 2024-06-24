help([==[

Description
===========
The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.


More information
================
 - Homepage: https://snakemake.readthedocs.io


Included extensions
===================
amply-0.1.6, ConfigArgParse-1.7, connection-pool-0.0.3, datrie-0.8.2,
dpath-2.1.6, fastjsonschema-2.18.0, humanfriendly-10.0, jupyter-core-5.3.1,
nbformat-5.9.2, plac-1.3.5, reretry-0.11.8, smart-open-6.3.0,
snakemake-7.32.3, stopit-1.1.2, throttler-1.2.2, toposort-1.10, yte-1.5.1
]==])

whatis([==[Description: The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.]==])
whatis([==[Homepage: https://snakemake.readthedocs.io]==])
whatis([==[URL: https://snakemake.readthedocs.io]==])
whatis([==[Extensions: amply-0.1.6, ConfigArgParse-1.7, connection-pool-0.0.3, datrie-0.8.2, dpath-2.1.6, fastjsonschema-2.18.0, humanfriendly-10.0, jupyter-core-5.3.1, nbformat-5.9.2, plac-1.3.5, reretry-0.11.8, smart-open-6.3.0, snakemake-7.32.3, stopit-1.1.2, throttler-1.2.2, toposort-1.10, yte-1.5.1]==])

local root = "/app/software/snakemake/7.32.3-foss-2022b"

conflict("snakemake")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("GitPython/3.1.31-GCCcore-12.2.0") ) then
    load("GitPython/3.1.31-GCCcore-12.2.0")
end

if not ( isloaded("IPython/8.14.0-GCCcore-12.2.0") ) then
    load("IPython/8.14.0-GCCcore-12.2.0")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.2.0") ) then
    load("PyYAML/6.0-GCCcore-12.2.0")
end

if not ( isloaded("wrapt/1.15.0-gfbf-2022b") ) then
    load("wrapt/1.15.0-gfbf-2022b")
end

if not ( isloaded("PuLP/2.7.0-foss-2022b") ) then
    load("PuLP/2.7.0-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSNAKEMAKE", root)
setenv("EBVERSIONSNAKEMAKE", "7.32.3")
setenv("EBDEVELSNAKEMAKE", pathJoin(root, "logs/snakemake-7.32.3-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTSNAKEMAKE", "ConfigArgParse-1.7,datrie-0.8.2,toposort-1.10,amply-0.1.6,smart-open-6.3.0,connection-pool-0.0.3,stopit-1.1.2,reretry-0.11.8,throttler-1.2.2,dpath-2.1.6,plac-1.3.5,yte-1.5.1,humanfriendly-10.0,nbformat-5.9.2,jupyter-core-5.3.1,fastjsonschema-2.18.0,snakemake-7.32.3")
