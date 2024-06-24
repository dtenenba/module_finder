help([==[

Description
===========
Cutadapt finds and removes adapter sequences, primers, poly-A tails and
 other types of unwanted sequence from your high-throughput sequencing reads.


More information
================
 - Homepage: https://opensource.scilifelab.se/projects/cutadapt/


Included extensions
===================
cutadapt-4.4, dnaio-0.10.0, xopen-1.7.0
]==])

whatis([==[Description: Cutadapt finds and removes adapter sequences, primers, poly-A tails and
 other types of unwanted sequence from your high-throughput sequencing reads.]==])
whatis([==[Homepage: https://opensource.scilifelab.se/projects/cutadapt/]==])
whatis([==[URL: https://opensource.scilifelab.se/projects/cutadapt/]==])
whatis([==[Extensions: cutadapt-4.4, dnaio-0.10.0, xopen-1.7.0]==])

local root = "/app/software/cutadapt/4.4-GCCcore-12.2.0"

conflict("cutadapt")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("pigz/2.7-GCCcore-12.2.0") ) then
    load("pigz/2.7-GCCcore-12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("python-isal/1.1.0-GCCcore-12.2.0") ) then
    load("python-isal/1.1.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCUTADAPT", root)
setenv("EBVERSIONCUTADAPT", "4.4")
setenv("EBDEVELCUTADAPT", pathJoin(root, "logs/cutadapt-4.4-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTCUTADAPT", "xopen-1.7.0,dnaio-0.10.0,cutadapt-4.4")
