help([==[

Description
===========
pybedtools wraps and extends BEDTools and offers feature-level manipulations from within Python.


More information
================
 - Homepage: https://daler.github.io/pybedtools
]==])

whatis([==[Description: pybedtools wraps and extends BEDTools and offers feature-level manipulations from within Python.]==])
whatis([==[Homepage: https://daler.github.io/pybedtools]==])
whatis([==[URL: https://daler.github.io/pybedtools]==])

local root = "/app/software/pybedtools/0.8.2-GCC-11.2.0"

conflict("pybedtools")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("BEDTools/2.30.0-GCC-11.2.0") ) then
    load("BEDTools/2.30.0-GCC-11.2.0")
end

if not ( isloaded("Pysam/0.17.0-GCC-11.2.0") ) then
    load("Pysam/0.17.0-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYBEDTOOLS", root)
setenv("EBVERSIONPYBEDTOOLS", "0.8.2")
setenv("EBDEVELPYBEDTOOLS", pathJoin(root, "logs/pybedtools-0.8.2-GCC-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
