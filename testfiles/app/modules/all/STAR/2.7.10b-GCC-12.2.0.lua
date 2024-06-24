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

local root = "/app/software/STAR/2.7.10b-GCC-12.2.0"

conflict("STAR")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("HTSlib/1.17-GCC-12.2.0") ) then
    load("HTSlib/1.17-GCC-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTAR", root)
setenv("EBVERSIONSTAR", "2.7.10b")
setenv("EBDEVELSTAR", pathJoin(root, "logs/STAR-2.7.10b-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
