help([==[

Description
===========
Bayesian haplotype-based polymorphism discovery and genotyping.


More information
================
 - Homepage: https://github.com/ekg/freebayes
]==])

whatis([==[Description: Bayesian haplotype-based polymorphism discovery and genotyping.]==])
whatis([==[Homepage: https://github.com/ekg/freebayes]==])
whatis([==[URL: https://github.com/ekg/freebayes]==])

local root = "/app/software/freebayes/1.3.2-GCCcore-8.3.0"

conflict("freebayes")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFREEBAYES", root)
setenv("EBVERSIONFREEBAYES", "1.3.2")
setenv("EBDEVELFREEBAYES", pathJoin(root, "logs/freebayes-1.3.2-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "scripts"))
prepend_path("PATH", pathJoin(root, "python"))
prepend_path("PATH", pathJoin(root, "vcflib"))
prepend_path("PATH", pathJoin(root, "vcflib/scripts"))
-- Built with EasyBuild version 4.3.0
