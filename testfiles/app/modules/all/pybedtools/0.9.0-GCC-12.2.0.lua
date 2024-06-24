help([==[

Description
===========
pybedtools wraps and extends BEDTools and offers feature-level manipulations from within Python.


More information
================
 - Homepage: https://daler.github.io/pybedtools


Included extensions
===================
pybedtools-0.9.0
]==])

whatis([==[Description: pybedtools wraps and extends BEDTools and offers feature-level manipulations from within Python.]==])
whatis([==[Homepage: https://daler.github.io/pybedtools]==])
whatis([==[URL: https://daler.github.io/pybedtools]==])
whatis([==[Extensions: pybedtools-0.9.0]==])

local root = "/app/software/pybedtools/0.9.0-GCC-12.2.0"

conflict("pybedtools")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("BEDTools/2.30.0-GCC-12.2.0") ) then
    load("BEDTools/2.30.0-GCC-12.2.0")
end

if not ( isloaded("Pysam/0.21.0-GCC-12.2.0") ) then
    load("Pysam/0.21.0-GCC-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYBEDTOOLS", root)
setenv("EBVERSIONPYBEDTOOLS", "0.9.0")
setenv("EBDEVELPYBEDTOOLS", pathJoin(root, "logs/pybedtools-0.9.0-GCC-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPYBEDTOOLS", "pybedtools-0.9.0")
