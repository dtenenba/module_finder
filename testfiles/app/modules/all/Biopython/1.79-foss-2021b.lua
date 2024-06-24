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

local root = "/app/software/Biopython/1.79-foss-2021b"

conflict("Biopython")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTBIOPYTHON", root)
setenv("EBVERSIONBIOPYTHON", "1.79")
setenv("EBDEVELBIOPYTHON", pathJoin(root, "logs/Biopython-1.79-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
