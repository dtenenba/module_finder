help([==[

Description
===========
Trinity represents a novel method for the efficient and robust de novo reconstruction
 of transcriptomes from RNA-Seq data. Trinity combines three independent software modules: Inchworm,
 Chrysalis, and Butterfly, applied sequentially to process large volumes of RNA-Seq reads.


More information
================
 - Homepage: https://trinityrnaseq.github.io
]==])

whatis([==[Description: Trinity represents a novel method for the efficient and robust de novo reconstruction
 of transcriptomes from RNA-Seq data. Trinity combines three independent software modules: Inchworm,
 Chrysalis, and Butterfly, applied sequentially to process large volumes of RNA-Seq reads.]==])
whatis([==[Homepage: https://trinityrnaseq.github.io]==])
whatis([==[URL: https://trinityrnaseq.github.io]==])

local root = "/app/software/Trinity/2.9.1-foss-2019b-Python-3.7.4"

conflict("Trinity")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("ant/1.10.7-Java-11") ) then
    load("ant/1.10.7-Java-11")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Bowtie2/2.3.5.1-GCC-8.3.0") ) then
    load("Bowtie2/2.3.5.1-GCC-8.3.0")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("Jellyfish/2.3.0-GCC-8.3.0") ) then
    load("Jellyfish/2.3.0-GCC-8.3.0")
end

if not ( isloaded("kallisto/0.46.1-foss-2019b") ) then
    load("kallisto/0.46.1-foss-2019b")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("Salmon/1.1.0-gompi-2019b") ) then
    load("Salmon/1.1.0-gompi-2019b")
end

if not ( isloaded("SAMtools/1.10-GCC-8.3.0") ) then
    load("SAMtools/1.10-GCC-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "trinityrnaseq-v2.9.1"))
prepend_path("TRINITY_HOME", pathJoin(root, "trinityrnaseq-v2.9.1"))
setenv("EBROOTTRINITY", root)
setenv("EBVERSIONTRINITY", "2.9.1")
setenv("EBDEVELTRINITY", pathJoin(root, "logs/Trinity-2.9.1-foss-2019b-Python-3.7.4-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
