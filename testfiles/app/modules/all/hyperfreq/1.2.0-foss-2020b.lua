help([==[

Description
===========
Hypermutation analysis software using BetaRat distribution for Bayesian
 analysis of the relative probability ratio (RPR) of observing mutations in two contexts. Includes
 Alnclst, for clustering pre-aligned nucleotide sequences.


More information
================
 - Homepage: https://python.org/


Included extensions
===================
alnclst-0.1.2, betarat-1.0.0, betarat-refactor-1, biopython-1.72,
fisher-0.1.5, hyperfreq-1.2.0
]==])

whatis([==[Description: Hypermutation analysis software using BetaRat distribution for Bayesian
 analysis of the relative probability ratio (RPR) of observing mutations in two contexts. Includes
 Alnclst, for clustering pre-aligned nucleotide sequences.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: alnclst-0.1.2, betarat-1.0.0, betarat-refactor-1, biopython-1.72, fisher-0.1.5, hyperfreq-1.2.0]==])

local root = "/app/software/hyperfreq/1.2.0-foss-2020b"

conflict("hyperfreq")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/2.7.18-GCCcore-10.2.0") ) then
    load("Python/2.7.18-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b-Python-2.7.18") ) then
    load("SciPy-bundle/2020.11-foss-2020b-Python-2.7.18")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHYPERFREQ", root)
setenv("EBVERSIONHYPERFREQ", "1.2.0")
setenv("EBDEVELHYPERFREQ", pathJoin(root, "logs/hyperfreq-1.2.0-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.7.0
setenv("EBEXTSLISTHYPERFREQ", "biopython-1.72,fisher-0.1.5,alnclst-0.1.2,betarat-1.0.0,betarat-refactor-1,hyperfreq-1.2.0")
