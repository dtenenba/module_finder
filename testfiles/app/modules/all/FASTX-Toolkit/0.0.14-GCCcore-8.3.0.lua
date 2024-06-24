help([==[

Description
===========
The FASTX-Toolkit is a collection of command line tools for 
 Short-Reads FASTA/FASTQ files preprocessing.


More information
================
 - Homepage: http://hannonlab.cshl.edu/fastx_toolkit/
]==])

whatis([==[Description: The FASTX-Toolkit is a collection of command line tools for 
 Short-Reads FASTA/FASTQ files preprocessing.]==])
whatis([==[Homepage: http://hannonlab.cshl.edu/fastx_toolkit/]==])
whatis([==[URL: http://hannonlab.cshl.edu/fastx_toolkit/]==])

local root = "/app/software/FASTX-Toolkit/0.0.14-GCCcore-8.3.0"

conflict("FASTX-Toolkit")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("libgtextutils/0.7-GCCcore-8.3.0") ) then
    load("libgtextutils/0.7-GCCcore-8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFASTXMINTOOLKIT", root)
setenv("EBVERSIONFASTXMINTOOLKIT", "0.0.14")
setenv("EBDEVELFASTXMINTOOLKIT", pathJoin(root, "logs/FASTX-Toolkit-0.0.14-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
