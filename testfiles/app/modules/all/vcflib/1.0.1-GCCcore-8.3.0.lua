help([==[

Description
===========
vcflib provides methods to manipulate and interpret sequence variation as it can be
 described by VCF. The Variant Call Format (VCF) is a flat-file, tab-delimited textual format intended
 to concisely describe reference-indexed genetic variations between individuals.


More information
================
 - Homepage: https://github.com/vcflib/vcflib
]==])

whatis([==[Description: vcflib provides methods to manipulate and interpret sequence variation as it can be
 described by VCF. The Variant Call Format (VCF) is a flat-file, tab-delimited textual format intended
 to concisely describe reference-indexed genetic variations between individuals.]==])
whatis([==[Homepage: https://github.com/vcflib/vcflib]==])
whatis([==[URL: https://github.com/vcflib/vcflib]==])

local root = "/app/software/vcflib/1.0.1-GCCcore-8.3.0"

conflict("vcflib")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVCFLIB", root)
setenv("EBVERSIONVCFLIB", "1.0.1")
setenv("EBDEVELVCFLIB", pathJoin(root, "logs/vcflib-1.0.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
