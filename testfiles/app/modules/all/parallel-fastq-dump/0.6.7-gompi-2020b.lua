help([==[

Description
===========
parallel fastq-dump wrapper


More information
================
 - Homepage: https://github.com/rvalieris/parallel-fastq-dump
 - Documentation:
    - https://github.com/rvalieris/parallel-fastq-dump
]==])

whatis([==[Description: parallel fastq-dump wrapper]==])
whatis([==[Homepage: https://github.com/rvalieris/parallel-fastq-dump]==])
whatis([==[URL: https://github.com/rvalieris/parallel-fastq-dump]==])

local root = "/app/software/parallel-fastq-dump/0.6.7-gompi-2020b"

conflict("parallel-fastq-dump")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SRA-Toolkit/2.10.9-gompi-2020b") ) then
    load("SRA-Toolkit/2.10.9-gompi-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPARALLELMINFASTQMINDUMP", root)
setenv("EBVERSIONPARALLELMINFASTQMINDUMP", "0.6.7")
setenv("EBDEVELPARALLELMINFASTQMINDUMP", pathJoin(root, "logs/parallel-fastq-dump-0.6.7-gompi-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.7.2
