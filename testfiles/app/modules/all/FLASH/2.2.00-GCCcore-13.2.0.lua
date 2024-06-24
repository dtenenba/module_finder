help([==[

Description
===========
FLASH (Fast Length Adjustment of SHort reads) is a very fast
and accurate software tool to merge paired-end reads from next-generation
sequencing experiments. FLASH is designed to merge pairs of reads when the
original DNA fragments are shorter than twice the length of reads. The
resulting longer reads can significantly improve genome assemblies. They can
also improve transcriptome assembly when FLASH is used to merge RNA-seq data.


More information
================
 - Homepage: https://ccb.jhu.edu/software/FLASH/
]==])

whatis([==[Description: FLASH (Fast Length Adjustment of SHort reads) is a very fast
and accurate software tool to merge paired-end reads from next-generation
sequencing experiments. FLASH is designed to merge pairs of reads when the
original DNA fragments are shorter than twice the length of reads. The
resulting longer reads can significantly improve genome assemblies. They can
also improve transcriptome assembly when FLASH is used to merge RNA-seq data.
]==])
whatis([==[Homepage: https://ccb.jhu.edu/software/FLASH/]==])
whatis([==[URL: https://ccb.jhu.edu/software/FLASH/]==])

local root = "/app/software/FLASH/2.2.00-GCCcore-13.2.0"

conflict("FLASH")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLASH", root)
setenv("EBVERSIONFLASH", "2.2.00")
setenv("EBDEVELFLASH", pathJoin(root, "logs/FLASH-2.2.00-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
