help([==[

Description
===========
Biopython is a set of freely available tools for biological
 computation written in Python by an international team of developers. It is
 a distributed collaborative effort to develop Python libraries and
 applications which address the needs of current and future work in
 bioinformatics.


More information
================
 - Homepage: https://www.biopython.org
]==])

whatis([==[Description: Biopython is a set of freely available tools for biological
 computation written in Python by an international team of developers. It is
 a distributed collaborative effort to develop Python libraries and
 applications which address the needs of current and future work in
 bioinformatics. ]==])
whatis([==[Homepage: https://www.biopython.org]==])
whatis([==[URL: https://www.biopython.org]==])

local root = "/app/software/Biopython/1.75-foss-2019b-Python-2.7.16"

conflict("Biopython")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-2.7.16") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-2.7.16")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTBIOPYTHON", root)
setenv("EBVERSIONBIOPYTHON", "1.75")
setenv("EBDEVELBIOPYTHON", pathJoin(root, "logs/Biopython-1.75-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.2.2
