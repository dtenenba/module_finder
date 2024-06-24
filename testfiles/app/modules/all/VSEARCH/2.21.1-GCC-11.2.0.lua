help([==[

Description
===========
VSEARCH supports de novo and reference based chimera detection,
 clustering, full-length and prefix dereplication, rereplication,
 reverse complementation, masking, all-vs-all pairwise global alignment,
 exact and global alignment searching, shuffling, subsampling and sorting.
 It also supports FASTQ file analysis, filtering,
 conversion and merging of paired-end reads.


More information
================
 - Homepage: https://github.com/torognes/vsearch
]==])

whatis([==[Description: VSEARCH supports de novo and reference based chimera detection,
 clustering, full-length and prefix dereplication, rereplication,
 reverse complementation, masking, all-vs-all pairwise global alignment,
 exact and global alignment searching, shuffling, subsampling and sorting.
 It also supports FASTQ file analysis, filtering,
 conversion and merging of paired-end reads.]==])
whatis([==[Homepage: https://github.com/torognes/vsearch]==])
whatis([==[URL: https://github.com/torognes/vsearch]==])

local root = "/app/software/VSEARCH/2.21.1-GCC-11.2.0"

conflict("VSEARCH")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTVSEARCH", root)
setenv("EBVERSIONVSEARCH", "2.21.1")
setenv("EBDEVELVSEARCH", pathJoin(root, "logs/VSEARCH-2.21.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
