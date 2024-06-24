help([==[

Description
===========
SlamDunk is a novel, fully automated software tool for automated, robust, scalable and reproducible
SLAMseq data analysis.


More information
================
 - Homepage: https://t-neumann.github.io/slamdunk
]==])

whatis([==[Description: SlamDunk is a novel, fully automated software tool for automated, robust, scalable and reproducible
SLAMseq data analysis.]==])
whatis([==[Homepage: https://t-neumann.github.io/slamdunk]==])
whatis([==[URL: https://t-neumann.github.io/slamdunk]==])

local root = "/app/software/SlamDunk/0.4.3-foss-2021b"

conflict("SlamDunk")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("pybedtools/0.8.2-GCC-11.2.0") ) then
    load("pybedtools/0.8.2-GCC-11.2.0")
end

if not ( isloaded("Pysam/0.17.0-GCC-11.2.0") ) then
    load("Pysam/0.17.0-GCC-11.2.0")
end

if not ( isloaded("Biopython/1.79-foss-2021b") ) then
    load("Biopython/1.79-foss-2021b")
end

if not ( isloaded("SAMtools/1.14-GCC-11.2.0") ) then
    load("SAMtools/1.14-GCC-11.2.0")
end

if not ( isloaded("VarScan/2.4.4-Java-11") ) then
    load("VarScan/2.4.4-Java-11")
end

if not ( isloaded("R/4.1.2-foss-2021b") ) then
    load("R/4.1.2-foss-2021b")
end

if not ( isloaded("NextGenMap/0.5.5-GCC-11.2.0") ) then
    load("NextGenMap/0.5.5-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSLAMDUNK", root)
setenv("EBVERSIONSLAMDUNK", "0.4.3")
setenv("EBDEVELSLAMDUNK", pathJoin(root, "logs/SlamDunk-0.4.3-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
