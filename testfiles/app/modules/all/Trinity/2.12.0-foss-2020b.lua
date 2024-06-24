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

local root = "/app/software/Trinity/2.12.0-foss-2020b"

conflict("Trinity")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("ant/1.10.8-Java-11") ) then
    load("ant/1.10.8-Java-11")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("Bowtie2/2.4.2-GCC-10.2.0") ) then
    load("Bowtie2/2.4.2-GCC-10.2.0")
end

if not ( isloaded("HTSlib/1.11-GCC-10.2.0") ) then
    load("HTSlib/1.11-GCC-10.2.0")
end

if not ( isloaded("Jellyfish/2.3.0-GCC-10.2.0") ) then
    load("Jellyfish/2.3.0-GCC-10.2.0")
end

if not ( isloaded("kallisto/0.46.2-foss-2020b") ) then
    load("kallisto/0.46.2-foss-2020b")
end

if not ( isloaded("ncurses/6.2-GCCcore-10.2.0") ) then
    load("ncurses/6.2-GCCcore-10.2.0")
end

if not ( isloaded("Salmon/1.4.0-gompi-2020b") ) then
    load("Salmon/1.4.0-gompi-2020b")
end

if not ( isloaded("SAMtools/1.11-GCC-10.2.0") ) then
    load("SAMtools/1.11-GCC-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "trinityrnaseq-v2.12.0"))
prepend_path("TRINITY_HOME", pathJoin(root, "trinityrnaseq-v2.12.0"))
setenv("EBROOTTRINITY", root)
setenv("EBVERSIONTRINITY", "2.12.0")
setenv("EBDEVELTRINITY", pathJoin(root, "logs/Trinity-2.12.0-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
