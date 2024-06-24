help([==[

Description
===========
Process sequencing results with our pipeline


More information
================
 - Homepage: https://support.parsebiosciences.com/hc/en-us


Included extensions
===================
splitpipe-0.9.3p
]==])

whatis([==[Description: Process sequencing results with our pipeline]==])
whatis([==[Homepage: https://support.parsebiosciences.com/hc/en-us]==])
whatis([==[URL: https://support.parsebiosciences.com/hc/en-us]==])
whatis([==[Extensions: splitpipe-0.9.3p]==])

local root = "/app/software/Parse-splitpipe/0.9.3p-foss-2020b"

conflict("Parse-splitpipe")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("SAMtools/1.11-GCC-10.2.0") ) then
    load("SAMtools/1.11-GCC-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-foss-2020b") ) then
    load("matplotlib/3.3.3-foss-2020b")
end

if not ( isloaded("Pysam/0.16.0.1-GCC-10.2.0") ) then
    load("Pysam/0.16.0.1-GCC-10.2.0")
end

if not ( isloaded("scanpy/1.7.2-foss-2020b") ) then
    load("scanpy/1.7.2-foss-2020b")
end

if not ( isloaded("STAR/2.7.6a-GCC-10.2.0") ) then
    load("STAR/2.7.6a-GCC-10.2.0")
end

if not ( isloaded("pigz/2.6-GCCcore-10.2.0") ) then
    load("pigz/2.6-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

if not ( isloaded("cURL/7.72.0-GCCcore-10.2.0") ) then
    load("cURL/7.72.0-GCCcore-10.2.0")
end

if not ( isloaded("OpenSSL/1.1.1i-GCCcore-10.2.0") ) then
    load("OpenSSL/1.1.1i-GCCcore-10.2.0")
end

if not ( isloaded("libtool/2.4.6-GCCcore-10.2.0") ) then
    load("libtool/2.4.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPARSEMINSPLITPIPE", root)
setenv("EBVERSIONPARSEMINSPLITPIPE", "0.9.3p")
setenv("EBDEVELPARSEMINSPLITPIPE", pathJoin(root, "logs/Parse-splitpipe-0.9.3p-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
setenv("EBEXTSLISTPARSEMINSPLITPIPE", "splitpipe-0.9.3p")
