help([==[

Description
===========
The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.


More information
================
 - Homepage: https://snakemake.readthedocs.io


Included extensions
===================
amply-0.1.4, ConfigArgParse-1.4, datrie-0.8.2, PuLP-2.4,
ratelimiter-1.2.0.post0, smart_open-4.1.2, snakemake-6.1.0, toposort-1.6,
wrapt-1.12.1
]==])

whatis([==[Description: The Snakemake workflow management system is a tool to create reproducible and scalable data analyses.]==])
whatis([==[Homepage: https://snakemake.readthedocs.io]==])
whatis([==[URL: https://snakemake.readthedocs.io]==])
whatis([==[Extensions: amply-0.1.4, ConfigArgParse-1.4, datrie-0.8.2, PuLP-2.4, ratelimiter-1.2.0.post0, smart_open-4.1.2, snakemake-6.1.0, toposort-1.6, wrapt-1.12.1]==])

local root = "/app/software/snakemake/6.1.0-foss-2020b"

conflict("snakemake")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("GitPython/3.1.14-GCCcore-10.2.0") ) then
    load("GitPython/3.1.14-GCCcore-10.2.0")
end

if not ( isloaded("IPython/7.18.1-GCCcore-10.2.0") ) then
    load("IPython/7.18.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSNAKEMAKE", root)
setenv("EBVERSIONSNAKEMAKE", "6.1.0")
setenv("EBDEVELSNAKEMAKE", pathJoin(root, "logs/snakemake-6.1.0-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTSNAKEMAKE", "wrapt-1.12.1,ratelimiter-1.2.0.post0,ConfigArgParse-1.4,datrie-0.8.2,toposort-1.6,amply-0.1.4,PuLP-2.4,smart_open-4.1.2,snakemake-6.1.0")
