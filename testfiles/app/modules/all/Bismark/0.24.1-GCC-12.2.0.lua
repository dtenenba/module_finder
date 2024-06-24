help([==[

Description
===========
A tool to map bisulfite converted sequence reads and determine cytosine methylation states


More information
================
 - Homepage: https://www.bioinformatics.babraham.ac.uk/projects/bismark/
]==])

whatis([==[Description: A tool to map bisulfite converted sequence reads and determine cytosine methylation states]==])
whatis([==[Homepage: https://www.bioinformatics.babraham.ac.uk/projects/bismark/]==])
whatis([==[URL: https://www.bioinformatics.babraham.ac.uk/projects/bismark/]==])

local root = "/app/software/Bismark/0.24.1-GCC-12.2.0"

conflict("Bismark")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("Perl/5.36.0-GCCcore-12.2.0") ) then
    load("Perl/5.36.0-GCCcore-12.2.0")
end

if not ( isloaded("Bowtie2/2.5.1-GCC-12.2.0") ) then
    load("Bowtie2/2.5.1-GCC-12.2.0")
end

if not ( isloaded("SAMtools/1.17-GCC-12.2.0") ) then
    load("SAMtools/1.17-GCC-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTBISMARK", root)
setenv("EBVERSIONBISMARK", "0.24.1")
setenv("EBDEVELBISMARK", pathJoin(root, "logs/Bismark-0.24.1-GCC-12.2.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.9.1
