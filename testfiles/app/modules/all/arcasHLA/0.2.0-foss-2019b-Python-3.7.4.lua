help([==[

Description
===========
arcasHLA performs high resolution genotyping for HLA class I and class II
genes from RNA sequencing, supporting both paired and single-end samples.


More information
================
 - Homepage: https://github.com/RabadanLab/arcasHLA
]==])

whatis([==[Description: arcasHLA performs high resolution genotyping for HLA class I and class II
genes from RNA sequencing, supporting both paired and single-end samples.]==])
whatis([==[Homepage: https://github.com/RabadanLab/arcasHLA]==])
whatis([==[URL: https://github.com/RabadanLab/arcasHLA]==])

local root = "/app/software/arcasHLA/0.2.0-foss-2019b-Python-3.7.4"

conflict("arcasHLA")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Biopython/1.75-foss-2019b-Python-3.7.4") ) then
    load("Biopython/1.75-foss-2019b-Python-3.7.4")
end

if not ( isloaded("BEDTools/2.29.2-GCC-8.3.0") ) then
    load("BEDTools/2.29.2-GCC-8.3.0")
end

if not ( isloaded("kallisto/0.46.1-foss-2019b") ) then
    load("kallisto/0.46.1-foss-2019b")
end

if not ( isloaded("SAMtools/1.10-GCC-8.3.0") ) then
    load("SAMtools/1.10-GCC-8.3.0")
end

if not ( isloaded("pigz/2.4-GCCcore-8.3.0") ) then
    load("pigz/2.4-GCCcore-8.3.0")
end

if not ( isloaded("git/2.23.0-GCCcore-8.3.0-nodocs") ) then
    load("git/2.23.0-GCCcore-8.3.0-nodocs")
end

if not ( isloaded("git-lfs/2.11.0") ) then
    load("git-lfs/2.11.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTARCASHLA", root)
setenv("EBVERSIONARCASHLA", "0.2.0")
setenv("EBDEVELARCASHLA", pathJoin(root, "logs/arcasHLA-0.2.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("PYTHONPATH", pathJoin(root, "scripts"))
-- Built with EasyBuild version 4.3.1
