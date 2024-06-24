help([==[

Description
===========
Raw sequences produced by next generation sequencing (NGS) machines may contain adapter,
 linker, barcode and fingerprint sequences. TagDust2 is a program to extract and correctly label the
 sequences to be mapped in downstream pipelines.


More information
================
 - Homepage: http://tagdust.sourceforge.net/
]==])

whatis([==[Description: Raw sequences produced by next generation sequencing (NGS) machines may contain adapter,
 linker, barcode and fingerprint sequences. TagDust2 is a program to extract and correctly label the
 sequences to be mapped in downstream pipelines.]==])
whatis([==[Homepage: http://tagdust.sourceforge.net/]==])
whatis([==[URL: http://tagdust.sourceforge.net/]==])

local root = "/app/software/TagDust/2.33-GCCcore-8.3.0"

conflict("TagDust")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTAGDUST", root)
setenv("EBVERSIONTAGDUST", "2.33")
setenv("EBDEVELTAGDUST", pathJoin(root, "logs/TagDust-2.33-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
