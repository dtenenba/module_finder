help([==[

Description
===========
index-hopping-filter is a tool that filters index hopped reads from a set of demultiplexed samples.
The tool detects and removes likely index hopped reads from demultiplexed FASTQs, and in turn emits new, filtered,
FASTQs with similar file and directory layout as the inputs, suitable for use with cellranger count and
cellranger vdj.


More information
================
 - Homepage: https://support.10xgenomics.com/docs/index-hopping-filter 
]==])

whatis([==[Description: index-hopping-filter is a tool that filters index hopped reads from a set of demultiplexed samples.
The tool detects and removes likely index hopped reads from demultiplexed FASTQs, and in turn emits new, filtered,
FASTQs with similar file and directory layout as the inputs, suitable for use with cellranger count and cellranger vdj. ]==])
whatis([==[Homepage: https://support.10xgenomics.com/docs/index-hopping-filter]==])
whatis([==[https://support.10xgenomics.com/docs/index-hopping-filter]==])
whatis([==[URL: https://support.10xgenomics.com/docs/index-hopping-filter]==])

local root = "/app/software/index-hopping-filter/1.0.1"

conflict("index-hopping-filter")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("bcl2fastq2/2.20.0-foss-2019b") ) then
    load("bcl2fastq2/2.20.0-foss-2019b")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLRANGER", root)

setenv("TENX_REFDATA", "/shared/biodata/ngs/Reference/10X/refdata-gex-GRCh38-2020-A")
-- hand-built with vim by Johh Dey - Oct 30, 2020 
