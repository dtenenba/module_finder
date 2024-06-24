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

local root = "/app/software/pybedtools/0.8.1-foss-2020a"

conflict("pybedtools")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("BEDTools/2.29.2-GCC-9.3.0") ) then
    load("BEDTools/2.29.2-GCC-9.3.0")
end

if not ( isloaded("Pysam/0.16.0.1-GCC-9.3.0") ) then
    load("Pysam/0.16.0.1-GCC-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYBEDTOOLS", root)
setenv("EBVERSIONPYBEDTOOLS", "0.8.1")
setenv("EBDEVELPYBEDTOOLS", pathJoin(root, "logs/pybedtools-0.8.1-foss-2020a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
