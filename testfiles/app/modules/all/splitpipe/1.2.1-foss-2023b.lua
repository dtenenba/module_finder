help([==[

Description
===========
splitpipe tool from Parse Biosciences. The pipeline takes FASTQ files and delivers
 processed data in the form of a cell-gene count matrix, which serves as the input for various open
 sources tools such as scanpy and seuratProcess sequencing results with our pipeline.

 A Parse Bioscience login ID is required to download


More information
================
 - Homepage: https://support.parsebiosciences.com/hc/en-us


Included extensions
===================
et_xmlfile-1.1.0, louvain-0.8.2, openpyxl-3.1.2, splitpipe-1.2.1
]==])

whatis([==[Description: splitpipe tool from Parse Biosciences. The pipeline takes FASTQ files and delivers
 processed data in the form of a cell-gene count matrix, which serves as the input for various open
 sources tools such as scanpy and seuratProcess sequencing results with our pipeline.

 A Parse Bioscience login ID is required to download]==])
whatis([==[Homepage: https://support.parsebiosciences.com/hc/en-us]==])
whatis([==[URL: https://support.parsebiosciences.com/hc/en-us]==])
whatis([==[Extensions: et_xmlfile-1.1.0, louvain-0.8.2, openpyxl-3.1.2, splitpipe-1.2.1]==])

local root = "/app/software/splitpipe/1.2.1-foss-2023b"

conflict("splitpipe")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("IgBLAST/1.22.0-x64-linux") ) then
    load("IgBLAST/1.22.0-x64-linux")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

if not ( isloaded("igraph/0.10.10-foss-2023b") ) then
    load("igraph/0.10.10-foss-2023b")
end

if not ( isloaded("SAMtools/1.19.2-GCC-13.2.0") ) then
    load("SAMtools/1.19.2-GCC-13.2.0")
end

if not ( isloaded("matplotlib/3.8.2-gfbf-2023b") ) then
    load("matplotlib/3.8.2-gfbf-2023b")
end

if not ( isloaded("Pysam/0.22.0-GCC-13.2.0") ) then
    load("Pysam/0.22.0-GCC-13.2.0")
end

if not ( isloaded("scanpy/1.10.1-foss-2023b") ) then
    load("scanpy/1.10.1-foss-2023b")
end

if not ( isloaded("STAR/2.7.11b-GCC-13.2.0") ) then
    load("STAR/2.7.11b-GCC-13.2.0")
end

if not ( isloaded("pigz/2.8-GCCcore-13.2.0") ) then
    load("pigz/2.8-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-13.2.0") ) then
    load("bzip2/1.0.8-GCCcore-13.2.0")
end

if not ( isloaded("cURL/8.3.0-GCCcore-13.2.0") ) then
    load("cURL/8.3.0-GCCcore-13.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("libtool/2.4.7-GCCcore-13.2.0") ) then
    load("libtool/2.4.7-GCCcore-13.2.0")
end

if not ( isloaded("leidenalg/0.10.2-foss-2023b") ) then
    load("leidenalg/0.10.2-foss-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", root)
setenv("EBROOTSPLITPIPE", root)
setenv("EBVERSIONSPLITPIPE", "1.2.1")
setenv("EBDEVELSPLITPIPE", pathJoin(root, "logs/splitpipe-1.2.1-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTSPLITPIPE", "louvain-0.8.2,et_xmlfile-1.1.0,openpyxl-3.1.2,splitpipe-1.2.1")
