help([==[

Description
===========
STAR aligns RNA-seq reads to a reference genome using uncompressed suffix arrays.


More information
================
 - Homepage: https://github.com/alexdobin/STAR
]==])

whatis([==[Description: STAR aligns RNA-seq reads to a reference genome using uncompressed suffix arrays.]==])
whatis([==[Homepage: https://github.com/alexdobin/STAR]==])
whatis([==[URL: https://github.com/alexdobin/STAR]==])

local root = "/app/software/STAR/2.7.6a-GCC-10.2.0"

conflict("STAR")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTAR", root)
setenv("EBVERSIONSTAR", "2.7.6a")
setenv("EBDEVELSTAR", pathJoin(root, "logs/STAR-2.7.6a-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
