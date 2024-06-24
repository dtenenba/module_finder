help([==[

Description
===========
SHAPEIT4 is a fast and accurate method for estimation of haplotypes
(aka phasing) for SNP array and high coverage sequencing data.


More information
================
 - Homepage: https://odelaneau.github.io/shapeit4/
]==])

whatis([==[Description: 
SHAPEIT4 is a fast and accurate method for estimation of haplotypes
(aka phasing) for SNP array and high coverage sequencing data.
]==])
whatis([==[Homepage: https://odelaneau.github.io/shapeit4/]==])
whatis([==[URL: https://odelaneau.github.io/shapeit4/]==])

local root = "/app/software/SHAPEIT4/4.2.2-foss-2020b"

conflict("SHAPEIT4")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("HTSlib/1.11-GCC-10.2.0") ) then
    load("HTSlib/1.11-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSHAPEIT4", root)
setenv("EBVERSIONSHAPEIT4", "4.2.2")
setenv("EBDEVELSHAPEIT4", pathJoin(root, "logs/SHAPEIT4-4.2.2-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.5.2
