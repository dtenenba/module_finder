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

local root = "/app/software/parallel-fastq-dump/0.6.7-GCCcore-11.2.0"

conflict("parallel-fastq-dump")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SRA-Toolkit/3.0.0-ubuntu64") ) then
    load("SRA-Toolkit/3.0.0-ubuntu64")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPARALLELMINFASTQMINDUMP", root)
setenv("EBVERSIONPARALLELMINFASTQMINDUMP", "0.6.7")
setenv("EBDEVELPARALLELMINFASTQMINDUMP", pathJoin(root, "logs/parallel-fastq-dump-0.6.7-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
