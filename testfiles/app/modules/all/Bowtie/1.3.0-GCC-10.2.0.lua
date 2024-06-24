help([==[

Description
===========
Bowtie is an ultrafast, memory-efficient short read aligner.
 It aligns short DNA sequences (reads) to the human genome.


More information
================
 - Homepage: http://bowtie-bio.sourceforge.net/index.shtml
]==])

whatis([==[Description: Bowtie is an ultrafast, memory-efficient short read aligner.
 It aligns short DNA sequences (reads) to the human genome.]==])
whatis([==[Homepage: http://bowtie-bio.sourceforge.net/index.shtml]==])
whatis([==[URL: http://bowtie-bio.sourceforge.net/index.shtml]==])

local root = "/app/software/Bowtie/1.3.0-GCC-10.2.0"

conflict("Bowtie")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("tbb/2020.3-GCCcore-10.2.0") ) then
    load("tbb/2020.3-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBOWTIE", root)
setenv("EBVERSIONBOWTIE", "1.3.0")
setenv("EBDEVELBOWTIE", pathJoin(root, "logs/Bowtie-1.3.0-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
