help([==[

Description
===========
pybedtools wraps and extends BEDTools and offers feature-level manipulations from
 within Python.


More information
================
 - Homepage: https://daler.github.io/pybedtools
]==])

whatis([==[Description: pybedtools wraps and extends BEDTools and offers feature-level manipulations from
 within Python.]==])
whatis([==[Homepage: https://daler.github.io/pybedtools]==])
whatis([==[URL: https://daler.github.io/pybedtools]==])

local root = "/app/software/pybedtools/0.8.0-foss-2019b-Python-3.7.4"

conflict("pybedtools")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("BEDTools/2.29.2-GCC-8.3.0") ) then
    load("BEDTools/2.29.2-GCC-8.3.0")
end

if not ( isloaded("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4") ) then
    load("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYBEDTOOLS", root)
setenv("EBVERSIONPYBEDTOOLS", "0.8.0")
setenv("EBDEVELPYBEDTOOLS", pathJoin(root, "logs/pybedtools-0.8.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.2
