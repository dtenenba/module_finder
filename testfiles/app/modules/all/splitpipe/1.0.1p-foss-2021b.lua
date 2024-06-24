help([==[

Description
===========
splitpipe tool from Parse Biosciences. The pipeline takes FASTQ files and delivers
 processed data in the form of a cell-gene count matrix, which serves as the input for various open
 sources tools such as scanpy and seuratProcess sequencing results with our pipeline


More information
================
 - Homepage: https://support.parsebiosciences.com/hc/en-us


Included extensions
===================
splitpipe-1.0.1p
]==])

whatis([==[Description: splitpipe tool from Parse Biosciences. The pipeline takes FASTQ files and delivers
 processed data in the form of a cell-gene count matrix, which serves as the input for various open
 sources tools such as scanpy and seuratProcess sequencing results with our pipeline]==])
whatis([==[Homepage: https://support.parsebiosciences.com/hc/en-us]==])
whatis([==[URL: https://support.parsebiosciences.com/hc/en-us]==])
whatis([==[Extensions: splitpipe-1.0.1p]==])

local root = "/app/software/splitpipe/1.0.1p-foss-2021b"

conflict("splitpipe")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("SAMtools/1.16.1-GCC-11.2.0") ) then
    load("SAMtools/1.16.1-GCC-11.2.0")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("Pysam/0.17.0-GCC-11.2.0") ) then
    load("Pysam/0.17.0-GCC-11.2.0")
end

if not ( isloaded("scanpy/1.8.2-foss-2021b") ) then
    load("scanpy/1.8.2-foss-2021b")
end

if not ( isloaded("STAR/2.7.9a-GCC-11.2.0") ) then
    load("STAR/2.7.9a-GCC-11.2.0")
end

if not ( isloaded("pigz/2.6-GCCcore-11.2.0") ) then
    load("pigz/2.6-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("cURL/7.78.0-GCCcore-11.2.0") ) then
    load("cURL/7.78.0-GCCcore-11.2.0")
end

if not ( isloaded("OpenSSL/1.1.1k-GCCcore-11.2.0") ) then
    load("OpenSSL/1.1.1k-GCCcore-11.2.0")
end

if not ( isloaded("libtool/2.4.6-GCCcore-11.2.0") ) then
    load("libtool/2.4.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSPLITPIPE", root)
setenv("EBVERSIONSPLITPIPE", "1.0.1p")
setenv("EBDEVELSPLITPIPE", pathJoin(root, "logs/splitpipe-1.0.1p-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
setenv("EBEXTSLISTSPLITPIPE", "splitpipe-1.0.1p")
