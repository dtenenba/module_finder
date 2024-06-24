help([==[

Description
===========
This package provides a number of small and efficient programs to perform
 common tasks with high throughput sequencing data in the FASTQ format. All of the programs
 work with typical FASTQ files as well as gzipped FASTQ files.


More information
================
 - Homepage: https://homes.cs.washington.edu/~dcjones/fastq-tools/
]==])

whatis([==[Description: This package provides a number of small and efficient programs to perform
 common tasks with high throughput sequencing data in the FASTQ format. All of the programs
 work with typical FASTQ files as well as gzipped FASTQ files.]==])
whatis([==[Homepage: https://homes.cs.washington.edu/~dcjones/fastq-tools/]==])
whatis([==[URL: https://homes.cs.washington.edu/~dcjones/fastq-tools/]==])

local root = "/app/software/fastq-tools/0.8.3-GCC-11.2.0"

conflict("fastq-tools")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("PCRE/8.45-GCCcore-11.2.0") ) then
    load("PCRE/8.45-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFASTQMINTOOLS", root)
setenv("EBVERSIONFASTQMINTOOLS", "0.8.3")
setenv("EBDEVELFASTQMINTOOLS", pathJoin(root, "logs/fastq-tools-0.8.3-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
