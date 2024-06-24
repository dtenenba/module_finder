help([==[

Description
===========
Stacks is a software pipeline for building loci from short-read sequences, such as those generated on
 the Illumina platform. Stacks was developed to work with restriction enzyme-based data, such as RAD-seq,
 for the purpose of building genetic maps and conducting population genomics and phylogeography.


More information
================
 - Homepage: https://catchenlab.life.illinois.edu/stacks/
]==])

whatis([==[Description: Stacks is a software pipeline for building loci from short-read sequences, such as those generated on
 the Illumina platform. Stacks was developed to work with restriction enzyme-based data, such as RAD-seq,
 for the purpose of building genetic maps and conducting population genomics and phylogeography.
]==])
whatis([==[Homepage: https://catchenlab.life.illinois.edu/stacks/]==])
whatis([==[URL: https://catchenlab.life.illinois.edu/stacks/]==])

local root = "/app/software/Stacks/2.53-foss-2019b"

conflict("Stacks")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTACKS", root)
setenv("EBVERSIONSTACKS", "2.53")
setenv("EBDEVELSTACKS", pathJoin(root, "logs/Stacks-2.53-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
