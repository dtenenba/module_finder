help([==[

Description
===========
Aggregate results from bioinformatics analyses across many samples into a single 
 report.

 MultiQC searches a given directory for analysis logs and compiles a HTML report. It's a general
 use tool, perfect for summarising the output from numerous bioinformatics tools.


More information
================
 - Homepage: https://multiqc.info


Included extensions
===================
coloredlogs-14.0, colormath-3.0.0, humanfriendly-8.2, lzstring-1.0.4,
Markdown-3.2.1, multiqc-1.21, pyaml_env-1.2.1, simplejson-3.17.0,
spectra-0.0.11
]==])

whatis([==[Description: Aggregate results from bioinformatics analyses across many samples into a single 
 report.

 MultiQC searches a given directory for analysis logs and compiles a HTML report. It's a general
 use tool, perfect for summarising the output from numerous bioinformatics tools.]==])
whatis([==[Homepage: https://multiqc.info]==])
whatis([==[URL: https://multiqc.info]==])
whatis([==[Extensions: coloredlogs-14.0, colormath-3.0.0, humanfriendly-8.2, lzstring-1.0.4, Markdown-3.2.1, multiqc-1.21, pyaml_env-1.2.1, simplejson-3.17.0, spectra-0.0.11]==])

local root = "/app/software/MultiQC/1.21-foss-2023a"

conflict("MultiQC")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("matplotlib/3.7.2-gfbf-2023a") ) then
    load("matplotlib/3.7.2-gfbf-2023a")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.3.0") ) then
    load("PyYAML/6.0-GCCcore-12.3.0")
end

if not ( isloaded("networkx/3.1-gfbf-2023a") ) then
    load("networkx/3.1-gfbf-2023a")
end

if not ( isloaded("plotly.py/5.22.0-GCCcore-12.3.0") ) then
    load("plotly.py/5.22.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMULTIQC", root)
setenv("EBVERSIONMULTIQC", "1.21")
setenv("EBDEVELMULTIQC", pathJoin(root, "logs/MultiQC-1.21-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTMULTIQC", "pyaml_env-1.2.1,simplejson-3.17.0,colormath-3.0.0,spectra-0.0.11,Markdown-3.2.1,lzstring-1.0.4,humanfriendly-8.2,coloredlogs-14.0,multiqc-1.21")
