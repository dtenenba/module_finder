help([==[

Description
===========
Process Management for Exascale Environments
PMI Exascale (PMIx) represents an attempt to
provide an extended version of the PMI standard specifically designed
to support clusters up to and including exascale sizes. The overall
objective of the project is not to branch the existing pseudo-standard
definitions - in fact, PMIx fully supports both of the existing PMI-1
and PMI-2 APIs - but rather to (a) augment and extend those APIs to
eliminate some current restrictions that impact scalability, and (b)
provide a reference implementation of the PMI-server that demonstrates
the desired level of scalability.


More information
================
 - Homepage: https://pmix.org/
]==])

whatis([==[Description: Process Management for Exascale Environments
PMI Exascale (PMIx) represents an attempt to
provide an extended version of the PMI standard specifically designed
to support clusters up to and including exascale sizes. The overall
objective of the project is not to branch the existing pseudo-standard
definitions - in fact, PMIx fully supports both of the existing PMI-1
and PMI-2 APIs - but rather to (a) augment and extend those APIs to
eliminate some current restrictions that impact scalability, and (b)
provide a reference implementation of the PMI-server that demonstrates
the desired level of scalability.
]==])
whatis([==[Homepage: https://pmix.org/]==])
whatis([==[URL: https://pmix.org/]==])

local root = "/app/software/PMIx/3.1.5-GCCcore-10.2.0"

conflict("PMIx")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("libevent/2.1.12-GCCcore-10.2.0") ) then
    load("libevent/2.1.12-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("hwloc/2.2.0-GCCcore-10.2.0") ) then
    load("hwloc/2.2.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPMIX", root)
setenv("EBVERSIONPMIX", "3.1.5")
setenv("EBDEVELPMIX", pathJoin(root, "logs/PMIx-3.1.5-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
