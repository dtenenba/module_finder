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
cutadapt-2.7, dnaio-0.4.1, xopen-0.8.4
]==])

whatis([==[Description: Cutadapt finds and removes adapter sequences, primers, poly-A tails and
 other types of unwanted sequence from your high-throughput sequencing reads.]==])
whatis([==[Homepage: https://opensource.scilifelab.se/projects/cutadapt/]==])
whatis([==[URL: https://opensource.scilifelab.se/projects/cutadapt/]==])
whatis([==[Extensions: cutadapt-2.7, dnaio-0.4.1, xopen-0.8.4]==])

local root = "/app/software/cutadapt/2.7-GCCcore-8.3.0-Python-3.7.4"

conflict("cutadapt")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCUTADAPT", root)
setenv("EBVERSIONCUTADAPT", "2.7")
setenv("EBDEVELCUTADAPT", pathJoin(root, "logs/cutadapt-2.7-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTCUTADAPT", "xopen-0.8.4,dnaio-0.4.1,cutadapt-2.7")
