help([==[

Description
===========
Tools for handling Unique Molecular Identifiers in NGS data sets


More information
================
 - Homepage: https://umi-tools.readthedocs.io


Included extensions
===================
future-0.17.1, regex-2019.02.07, UMI-tools-1.0.1
]==])

whatis([==[Description: Tools for handling Unique Molecular Identifiers in NGS data sets]==])
whatis([==[Homepage: https://umi-tools.readthedocs.io]==])
whatis([==[URL: https://umi-tools.readthedocs.io]==])
whatis([==[Extensions: future-0.17.1, regex-2019.02.07, UMI-tools-1.0.1]==])

local root = "/app/software/UMI-tools/1.0.1-foss-2019b-Python-3.7.4"

conflict("UMI-tools")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4") ) then
    load("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTUMIMINTOOLS", root)
setenv("EBVERSIONUMIMINTOOLS", "1.0.1")
setenv("EBDEVELUMIMINTOOLS", pathJoin(root, "logs/UMI-tools-1.0.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTUMIMINTOOLS", "regex-2019.02.07,future-0.17.1,UMI-tools-1.0.1")
