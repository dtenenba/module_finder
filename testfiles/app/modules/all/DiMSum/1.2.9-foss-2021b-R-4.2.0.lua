help([==[

Description
===========
An error model and pipeline for analyzing deep mutational scanning (DMS) data and diagnosing common experimental pathologies.


More information
================
 - Homepage: https://github.com/lehner-lab/DiMSum
]==])

whatis([==[Description: An error model and pipeline for analyzing deep mutational scanning (DMS) data and diagnosing common experimental pathologies.]==])
whatis([==[Homepage: https://github.com/lehner-lab/DiMSum]==])
whatis([==[URL: https://github.com/lehner-lab/DiMSum]==])

local root = "/app/software/DiMSum/1.2.9/DiMSum"

conflict("DiMSum")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

if not ( isloaded("fhR/4.2.0-foss-2021b") ) then
    load("fhR/4.2.0-foss-2021b")
end

if not ( isloaded("Pandoc/2.13") ) then
    load("Pandoc/2.13")
end

if not ( isloaded("cutadapt/3.5-GCCcore-11.2.0 ") ) then
    load("cutadapt/3.5-GCCcore-11.2.0 ")
end

if not ( isloaded("FastQC/0.11.9-Java-11") ) then
    load("FastQC/0.11.9-Java-11")
end

if not ( isloaded("VSEARCH/2.21.1-GCC-11.2.0") ) then
    load("VSEARCH/2.21.1-GCC-11.2.0")
end

if not ( isloaded("starcode/1.4-GCC-11.2.0") ) then
    load("starcode/1.4-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTDIMSUM", root)
setenv("EBVERSIONDIMSUM", "1.2.9")
setenv("EBDEVELDIMSUM", pathJoin(root, "logs/DiMSum-1.2.9-foss-2021b-R-4.2.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.5.4
