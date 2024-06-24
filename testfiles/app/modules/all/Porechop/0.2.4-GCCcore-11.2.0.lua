help([==[

Description
===========
Porechop is a tool for finding and removing adapters from Oxford Nanopore reads.
 Adapters on the ends of reads are trimmed off, and when a read has an adapter in its middle,
 it is treated as chimeric and chopped into separate reads. Porechop performs thorough alignments
 to effectively find adapters, even at low sequence identity


More information
================
 - Homepage: https://github.com/rrwick/Porechop
]==])

whatis([==[Description: Porechop is a tool for finding and removing adapters from Oxford Nanopore reads.
 Adapters on the ends of reads are trimmed off, and when a read has an adapter in its middle,
 it is treated as chimeric and chopped into separate reads. Porechop performs thorough alignments
 to effectively find adapters, even at low sequence identity]==])
whatis([==[Homepage: https://github.com/rrwick/Porechop]==])
whatis([==[URL: https://github.com/rrwick/Porechop]==])

local root = "/app/software/Porechop/0.2.4-GCCcore-11.2.0"

conflict("Porechop")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPORECHOP", root)
setenv("EBVERSIONPORECHOP", "0.2.4")
setenv("EBDEVELPORECHOP", pathJoin(root, "logs/Porechop-0.2.4-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
