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

local root = "/app/software/pybedtools/0.8.1-GCC-10.2.0"

conflict("pybedtools")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("BEDTools/2.29.2-GCC-10.2.0") ) then
    load("BEDTools/2.29.2-GCC-10.2.0")
end

if not ( isloaded("Pysam/0.16.0.1-GCC-10.2.0") ) then
    load("Pysam/0.16.0.1-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYBEDTOOLS", root)
setenv("EBVERSIONPYBEDTOOLS", "0.8.1")
setenv("EBDEVELPYBEDTOOLS", pathJoin(root, "logs/pybedtools-0.8.1-GCC-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.2
