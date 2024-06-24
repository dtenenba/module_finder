help([==[

Description
===========
NGS is a new, domain-specific API for accessing reads, alignments and pileups
produced from Next Generation Sequencing.


More information
================
 - Homepage: https://github.com/ncbi/ngs
]==])

whatis([==[Description: NGS is a new, domain-specific API for accessing reads, alignments and pileups
produced from Next Generation Sequencing.]==])
whatis([==[Homepage: https://github.com/ncbi/ngs]==])
whatis([==[URL: https://github.com/ncbi/ngs]==])

local root = "/app/software/NGS/2.11.2-GCCcore-11.2.0"

conflict("NGS")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNGS", root)
setenv("EBVERSIONNGS", "2.11.2")
setenv("EBDEVELNGS", pathJoin(root, "logs/NGS-2.11.2-GCCcore-11.2.0-easybuild-devel"))

prepend_path("CLASSPATH", pathJoin(root, "jar/ngs-java.jar"))
-- Built with EasyBuild version 4.5.4
