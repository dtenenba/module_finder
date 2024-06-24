help([==[

Description
===========
SeqAn is an open source C++ library of efficient algorithms and data structures
 for the analysis of sequences with the focus on biological data.


More information
================
 - Homepage: https://github.com/seqan/seqan
]==])

whatis([==[Description: 
 SeqAn is an open source C++ library of efficient algorithms and data structures
 for the analysis of sequences with the focus on biological data.
]==])
whatis([==[Homepage: https://github.com/seqan/seqan]==])
whatis([==[URL: https://github.com/seqan/seqan]==])

local root = "/app/software/SeqAn/2.4.0-GCCcore-11.2.0"

conflict("SeqAn")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSEQAN", root)
setenv("EBVERSIONSEQAN", "2.4.0")
setenv("EBDEVELSEQAN", pathJoin(root, "logs/SeqAn-2.4.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
