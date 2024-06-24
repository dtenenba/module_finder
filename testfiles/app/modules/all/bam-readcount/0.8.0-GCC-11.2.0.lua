help([==[

Description
===========
Count DNA sequence reads in BAM files


More information
================
 - Homepage: https://github.com/genome/bam-readcount
]==])

whatis([==[Description: Count DNA sequence reads in BAM files]==])
whatis([==[Homepage: https://github.com/genome/bam-readcount]==])
whatis([==[URL: https://github.com/genome/bam-readcount]==])

local root = "/app/software/bam-readcount/0.8.0-GCC-11.2.0"

conflict("bam-readcount")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-11.2.0") ) then
    load("ncurses/6.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBAMMINREADCOUNT", root)
setenv("EBVERSIONBAMMINREADCOUNT", "0.8.0")
setenv("EBDEVELBAMMINREADCOUNT", pathJoin(root, "logs/bam-readcount-0.8.0-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
