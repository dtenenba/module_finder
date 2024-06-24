help([==[

Description
===========
Minimap2 is a fast sequence mapping and alignment
program that can find overlaps between long noisy reads, or map long
reads or their assemblies to a reference genome optionally with detailed
alignment (i.e. CIGAR). At present, it works efficiently with query
sequences from a few kilobases to ~100 megabases in length at an error
rate ~15%. Minimap2 outputs in the PAF or the SAM format. On limited
test data sets, minimap2 is over 20 times faster than most other
long-read aligners. It will replace BWA-MEM for long reads and contig
alignment.


More information
================
 - Homepage: https://github.com/lh3/minimap2
]==])

whatis([==[Description: Minimap2 is a fast sequence mapping and alignment
program that can find overlaps between long noisy reads, or map long
reads or their assemblies to a reference genome optionally with detailed
alignment (i.e. CIGAR). At present, it works efficiently with query
sequences from a few kilobases to ~100 megabases in length at an error
rate ~15%. Minimap2 outputs in the PAF or the SAM format. On limited
test data sets, minimap2 is over 20 times faster than most other
long-read aligners. It will replace BWA-MEM for long reads and contig
alignment.]==])
whatis([==[Homepage: https://github.com/lh3/minimap2]==])
whatis([==[URL: https://github.com/lh3/minimap2]==])

local root = "/app/software/minimap2/2.17-GCC-8.3.0"

conflict("minimap2")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMINIMAP2", root)
setenv("EBVERSIONMINIMAP2", "2.17")
setenv("EBDEVELMINIMAP2", pathJoin(root, "logs/minimap2-2.17-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.0
