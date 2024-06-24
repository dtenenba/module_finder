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
Markdown-3.2.1, multiqc-1.9, simplejson-3.17.0, spectra-0.0.11
]==])

whatis([==[Description: Aggregate results from bioinformatics analyses across many samples into a single 
 report.

 MultiQC searches a given directory for analysis logs and compiles a HTML report. It's a general
 use tool, perfect for summarising the output from numerous bioinformatics tools.]==])
whatis([==[Homepage: https://multiqc.info]==])
whatis([==[URL: https://multiqc.info]==])
whatis([==[Extensions: coloredlogs-14.0, colormath-3.0.0, humanfriendly-8.2, lzstring-1.0.4, Markdown-3.2.1, multiqc-1.9, simplejson-3.17.0, spectra-0.0.11]==])

local root = "/app/software/MultiQC/1.9-foss-2019b-Python-3.7.4"

conflict("MultiQC")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0")
end

if not ( isloaded("networkx/2.4-foss-2019b-Python-3.7.4") ) then
    load("networkx/2.4-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMULTIQC", root)
setenv("EBVERSIONMULTIQC", "1.9")
setenv("EBDEVELMULTIQC", pathJoin(root, "logs/MultiQC-1.9-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTMULTIQC", "simplejson-3.17.0,colormath-3.0.0,spectra-0.0.11,Markdown-3.2.1,lzstring-1.0.4,humanfriendly-8.2,coloredlogs-14.0,multiqc-1.9")
