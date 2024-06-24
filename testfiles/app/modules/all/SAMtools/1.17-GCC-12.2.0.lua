help([==[

Description
===========
SAM Tools provide various utilities for manipulating alignments in the SAM format, 
 including sorting, merging, indexing and generating alignments in a per-position format.


More information
================
 - Homepage: https://www.htslib.org/
]==])

whatis([==[Description: SAM Tools provide various utilities for manipulating alignments in the SAM format, 
 including sorting, merging, indexing and generating alignments in a per-position format.]==])
whatis([==[Homepage: https://www.htslib.org/]==])
whatis([==[URL: https://www.htslib.org/]==])

local root = "/app/software/SAMtools/1.17-GCC-12.2.0"

conflict("SAMtools")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("ncurses/6.3-GCCcore-12.2.0") ) then
    load("ncurses/6.3-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.2.0") ) then
    load("bzip2/1.0.8-GCCcore-12.2.0")
end

if not ( isloaded("XZ/5.2.7-GCCcore-12.2.0") ) then
    load("XZ/5.2.7-GCCcore-12.2.0")
end

if not ( isloaded("cURL/7.86.0-GCCcore-12.2.0") ) then
    load("cURL/7.86.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSAMTOOLS", root)
setenv("EBVERSIONSAMTOOLS", "1.17")
setenv("EBDEVELSAMTOOLS", pathJoin(root, "logs/SAMtools-1.17-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
