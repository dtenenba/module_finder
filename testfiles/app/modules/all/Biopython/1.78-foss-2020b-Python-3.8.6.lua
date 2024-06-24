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

local root = "/app/software/Biopython/1.78-foss-2020b-Python-3.8.6"

conflict("Biopython")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTBIOPYTHON", root)
setenv("EBVERSIONBIOPYTHON", "1.78")
setenv("EBDEVELBIOPYTHON", pathJoin(root, "logs/Biopython-1.78-foss-2020b-Python-3.8.6-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.2
