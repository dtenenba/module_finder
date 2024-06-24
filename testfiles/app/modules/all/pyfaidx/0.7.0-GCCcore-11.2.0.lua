help([==[

Description
===========
pyfaidx: efficient pythonic random access to fasta subsequences


More information
================
 - Homepage: https://pypi.python.org/pypi/pyfaidx
]==])

whatis([==[Description: pyfaidx: efficient pythonic random access to fasta subsequences]==])
whatis([==[Homepage: https://pypi.python.org/pypi/pyfaidx]==])
whatis([==[URL: https://pypi.python.org/pypi/pyfaidx]==])

local root = "/app/software/pyfaidx/0.7.0-GCCcore-11.2.0"

conflict("pyfaidx")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYFAIDX", root)
setenv("EBVERSIONPYFAIDX", "0.7.0")
setenv("EBDEVELPYFAIDX", pathJoin(root, "logs/pyfaidx-0.7.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
