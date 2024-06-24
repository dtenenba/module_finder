help([==[

Description
===========
SparK - Publication quality and pipeline integratable NGS data plotting.


More information
================
 - Homepage: https://github.com/harbourlab/SparK
]==])

whatis([==[Description: SparK - Publication quality and pipeline integratable NGS data plotting.]==])
whatis([==[Homepage: https://github.com/harbourlab/SparK]==])
whatis([==[URL: https://github.com/harbourlab/SparK]==])

local root = "/app/software/SparK/2.6.2-GCCcore-10.2.0"

conflict("SparK")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSPARK", root)
setenv("EBVERSIONSPARK", "2.6.2")
setenv("EBDEVELSPARK", pathJoin(root, "logs/SparK-2.6.2-GCCcore-10.2.0-easybuild-devel"))

setenv("SPARK_HOME", "/app/software/SparK/2.6.2-GCCcore-10.2.0")
prepend_path("PATH", root)
prepend_path("PYTHONPATH", root)
-- Built with EasyBuild version 4.3.4
