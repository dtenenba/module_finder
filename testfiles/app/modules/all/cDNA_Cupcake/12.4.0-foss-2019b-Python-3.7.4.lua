help([==[

Description
===========
cDNA_Cupcake is a miscellaneous collection of Python and R scripts used for analyzing sequencing data.


More information
================
 - Homepage: https://github.com/Magdoll/cDNA_Cupcake


Included extensions
===================
bcbio-gff-0.6.6, cDNA_Cupcake-12.4.0
]==])

whatis([==[Description: cDNA_Cupcake is a miscellaneous collection of Python and R scripts used for analyzing sequencing data.]==])
whatis([==[Homepage: https://github.com/Magdoll/cDNA_Cupcake]==])
whatis([==[URL: https://github.com/Magdoll/cDNA_Cupcake]==])
whatis([==[Extensions: bcbio-gff-0.6.6, cDNA_Cupcake-12.4.0]==])

local root = "/app/software/cDNA_Cupcake/12.4.0-foss-2019b-Python-3.7.4"

conflict("cDNA_Cupcake")

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

if not ( isloaded("bx-python/0.8.8-foss-2019b-Python-3.7.4") ) then
    load("bx-python/0.8.8-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCDNA_CUPCAKE", root)
setenv("EBVERSIONCDNA_CUPCAKE", "12.4.0")
setenv("EBDEVELCDNA_CUPCAKE", pathJoin(root, "logs/cDNA_Cupcake-12.4.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "sequence"))
prepend_path("PATH", pathJoin(root, "rarefaction"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "annotation"))
prepend_path("PYTHONPATH", pathJoin(root, "bacteria"))
prepend_path("PYTHONPATH", pathJoin(root, "beta"))
prepend_path("PYTHONPATH", pathJoin(root, "SequelQC"))
prepend_path("PYTHONPATH", pathJoin(root, "simulate"))
prepend_path("PYTHONPATH", pathJoin(root, "singlecell"))
prepend_path("PYTHONPATH", pathJoin(root, "targeted"))
prepend_path("PYTHONPATH", pathJoin(root, "sequence"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTCDNA_CUPCAKE", "bcbio-gff-0.6.6,cDNA_Cupcake-12.4.0")
