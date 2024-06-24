help([==[

Description
===========
PDBFixer is an easy to use application for fixing problems in Protein Data Bank files in preparation
for simulating them.


More information
================
 - Homepage: https://github.com/openmm/pdbfixer
]==])

whatis([==[Description: PDBFixer is an easy to use application for fixing problems in Protein Data Bank files in preparation
for simulating them.]==])
whatis([==[Homepage: https://github.com/openmm/pdbfixer]==])
whatis([==[URL: https://github.com/openmm/pdbfixer]==])

local root = "/app/software/PDBFixer/1.7-foss-2020b"

conflict("PDBFixer")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("OpenMM/7.5.1-foss-2020b") ) then
    load("OpenMM/7.5.1-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPDBFIXER", root)
setenv("EBVERSIONPDBFIXER", "1.7")
setenv("EBDEVELPDBFIXER", pathJoin(root, "logs/PDBFixer-1.7-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
