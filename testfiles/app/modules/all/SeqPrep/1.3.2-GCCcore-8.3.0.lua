help([==[

Description
===========
Tool for stripping adaptors and/or merging paired reads with overlap into single reads.


More information
================
 - Homepage: https://github.com/jstjohn/SeqPrep
]==])

whatis([==[Description: Tool for stripping adaptors and/or merging paired reads with overlap into single reads.]==])
whatis([==[Homepage: https://github.com/jstjohn/SeqPrep]==])
whatis([==[URL: https://github.com/jstjohn/SeqPrep]==])

local root = "/app/software/SeqPrep/1.3.2-GCCcore-8.3.0"

conflict("SeqPrep")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSEQPREP", root)
setenv("EBVERSIONSEQPREP", "1.3.2")
setenv("EBDEVELSEQPREP", pathJoin(root, "logs/SeqPrep-1.3.2-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
