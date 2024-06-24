help([==[

Description
===========
CRISPResso2 is a software pipeline designed to enable rapid and
intuitive interpretation of genome editing experiments.


More information
================
 - Homepage: https://github.com/pinellolab/CRISPResso2/
]==])

whatis([==[Description: CRISPResso2 is a software pipeline designed to enable rapid and
intuitive interpretation of genome editing experiments.]==])
whatis([==[Homepage: https://github.com/pinellolab/CRISPResso2/]==])
whatis([==[URL: https://github.com/pinellolab/CRISPResso2/]==])

local root = "/app/software/CRISPResso2/2.3.1-foss-2023b"

conflict("CRISPResso2")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Java/21.0.2") ) then
    load("Java/21.0.2")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

if not ( isloaded("matplotlib/3.8.2-gfbf-2023b") ) then
    load("matplotlib/3.8.2-gfbf-2023b")
end

if not ( isloaded("FLASH/2.2.00-GCCcore-13.2.0") ) then
    load("FLASH/2.2.00-GCCcore-13.2.0")
end

if not ( isloaded("fastp/0.23.4-GCC-13.2.0") ) then
    load("fastp/0.23.4-GCC-13.2.0")
end

if not ( isloaded("SAMtools/1.19.2-GCC-13.2.0") ) then
    load("SAMtools/1.19.2-GCC-13.2.0")
end

if not ( isloaded("Bowtie2/2.5.4-GCC-13.2.0") ) then
    load("Bowtie2/2.5.4-GCC-13.2.0")
end

if not ( isloaded("Seaborn/0.13.2-gfbf-2023b") ) then
    load("Seaborn/0.13.2-gfbf-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCRISPRESSO2", root)
setenv("EBVERSIONCRISPRESSO2", "2.3.1")
setenv("EBDEVELCRISPRESSO2", pathJoin(root, "logs/CRISPResso2-2.3.1-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages/CRISPResso2"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
