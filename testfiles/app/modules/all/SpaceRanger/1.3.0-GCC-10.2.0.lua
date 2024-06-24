help([==[

Description
===========
Space Ranger is a set of analysis pipelines that process Visium spatial RNA-seq output
and brightfield microscope images in order to detect tissue, align reads, generate feature-spot matrices,
perform clustering and gene expression analysis, and place spots in spatial context on the slide image.


More information
================
 - Homepage: https://support.10xgenomics.com/spatial-gene-expression/software/pipelines/latest/what-is-space-ranger
]==])

whatis([==[Description:  Space Ranger is a set of analysis pipelines that process Visium spatial RNA-seq output
and brightfield microscope images in order to detect tissue, align reads, generate feature-spot matrices,
perform clustering and gene expression analysis, and place spots in spatial context on the slide image. ]==])
whatis([==[Homepage: https://support.10xgenomics.com/spatial-gene-expression/software/pipelines/latest/what-is-space-ranger]==])
whatis([==[URL: https://support.10xgenomics.com/spatial-gene-expression/software/pipelines/latest/what-is-space-ranger]==])

local root = "/app/software/SpaceRanger/1.3.0-GCC-10.2.0"

conflict("SpaceRanger")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("bcl2fastq2/2.20.0-GCC-10.2.0") ) then
    load("bcl2fastq2/2.20.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSPACERANGER", root)
setenv("EBVERSIONSPACERANGER", "1.3.0")
setenv("EBDEVELSPACERANGER", pathJoin(root, "logs/SpaceRanger-1.3.0-GCC-10.2.0-easybuild-devel"))

prepend_path("PATH", "/shared/biodata/ngs/Reference/10x/refdata-gex-GRCh38-2020-A")
prepend_path("PATH", "/shared/biodata/ngs/Reference/10x/refdata-gex-mm10-2020-A")
-- Built with EasyBuild version 4.3.4
