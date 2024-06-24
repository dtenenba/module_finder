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

local root = "/app/software/STAR/2.7.3a-foss-2019b"

conflict("STAR")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTAR", root)
setenv("EBVERSIONSTAR", "2.7.3a")
setenv("EBDEVELSTAR", pathJoin(root, "logs/STAR-2.7.3a-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
