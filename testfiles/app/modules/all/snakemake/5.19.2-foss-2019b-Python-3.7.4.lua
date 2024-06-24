help([==[

Description
===========
The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.


More information
================
 - Homepage: https://snakemake.readthedocs.io


Included extensions
===================
appdirs-1.4.4, ConfigArgParse-1.2.3, contextlib2-0.6.0.post1, datrie-0.8.2,
docutils-0.16, jsonschema-3.2.0, psutil-5.7.0, pyrsistent-0.16.0,
ratelimiter-1.2.0.post0, snakemake-5.19.2, wrapt-1.12.1
]==])

whatis([==[Description: The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.]==])
whatis([==[Homepage: https://snakemake.readthedocs.io]==])
whatis([==[URL: https://snakemake.readthedocs.io]==])
whatis([==[Extensions: appdirs-1.4.4, ConfigArgParse-1.2.3, contextlib2-0.6.0.post1, datrie-0.8.2, docutils-0.16, jsonschema-3.2.0, psutil-5.7.0, pyrsistent-0.16.0, ratelimiter-1.2.0.post0, snakemake-5.19.2, wrapt-1.12.1]==])

local root = "/app/software/snakemake/5.19.2-foss-2019b-Python-3.7.4"

conflict("snakemake")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4")
end

if not ( isloaded("GitPython/3.1.0-GCCcore-8.3.0-Python-3.7.4") ) then
    load("GitPython/3.1.0-GCCcore-8.3.0-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSNAKEMAKE", root)
setenv("EBVERSIONSNAKEMAKE", "5.19.2")
setenv("EBDEVELSNAKEMAKE", pathJoin(root, "logs/snakemake-5.19.2-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTSNAKEMAKE", "datrie-0.8.2,docutils-0.16,pyrsistent-0.16.0,contextlib2-0.6.0.post1,jsonschema-3.2.0,appdirs-1.4.4,ConfigArgParse-1.2.3,ratelimiter-1.2.0.post0,wrapt-1.12.1,psutil-5.7.0,snakemake-5.19.2")
