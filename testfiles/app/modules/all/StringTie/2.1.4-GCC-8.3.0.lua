help([==[

Description
===========
StringTie is a fast and highly efficient assembler of RNA-Seq alignments into potential transcripts


More information
================
 - Homepage: https://ccb.jhu.edu/software/stringtie/
]==])

whatis([==[Description: StringTie is a fast and highly efficient assembler of RNA-Seq alignments into potential transcripts]==])
whatis([==[Homepage: https://ccb.jhu.edu/software/stringtie/]==])
whatis([==[URL: https://ccb.jhu.edu/software/stringtie/]==])

local root = "/app/software/StringTie/2.1.4-GCC-8.3.0"

conflict("StringTie")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTRINGTIE", root)
setenv("EBVERSIONSTRINGTIE", "2.1.4")
setenv("EBDEVELSTRINGTIE", pathJoin(root, "logs/StringTie-2.1.4-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
