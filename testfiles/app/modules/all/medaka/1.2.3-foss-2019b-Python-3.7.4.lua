help([==[

Description
===========
medaka is a tool to create a consensus sequence from nanopore sequencing data.


More information
================
 - Homepage: https://github.com/nanoporetech/medaka


Included extensions
===================
intervaltree-3.1.0, mappy-2.17, medaka-1.2.3, ont-fast5-api-3.1.6,
parasail-1.2, progressbar33-2.4, pyfaidx-0.5.9.1, sortedcontainers-2.3.0,
whatshap-1.0, xopen-0.9.0
]==])

whatis([==[Description: medaka is a tool to create a consensus sequence from nanopore sequencing data.]==])
whatis([==[Homepage: https://github.com/nanoporetech/medaka]==])
whatis([==[URL: https://github.com/nanoporetech/medaka]==])
whatis([==[Extensions: intervaltree-3.1.0, mappy-2.17, medaka-1.2.3, ont-fast5-api-3.1.6, parasail-1.2, progressbar33-2.4, pyfaidx-0.5.9.1, sortedcontainers-2.3.0, whatshap-1.0, xopen-0.9.0]==])

local root = "/app/software/medaka/1.2.3-foss-2019b-Python-3.7.4"

conflict("medaka")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("pybind11/2.3.0-foss-2019b-Python-3.7.4") ) then
    load("pybind11/2.3.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("TensorFlow/2.2.0-foss-2019b-Python-3.7.4") ) then
    load("TensorFlow/2.2.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Biopython/1.75-foss-2019b-Python-3.7.4") ) then
    load("Biopython/1.75-foss-2019b-Python-3.7.4")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Pysam/0.16.0.1-GCC-8.3.0") ) then
    load("Pysam/0.16.0.1-GCC-8.3.0")
end

if not ( isloaded("SAMtools/1.10-GCC-8.3.0") ) then
    load("SAMtools/1.10-GCC-8.3.0")
end

if not ( isloaded("minimap2/2.17-GCC-8.3.0") ) then
    load("minimap2/2.17-GCC-8.3.0")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("Racon/1.4.13-GCCcore-8.3.0") ) then
    load("Racon/1.4.13-GCCcore-8.3.0")
end

if not ( isloaded("spoa/4.0.0-GCC-8.3.0") ) then
    load("spoa/4.0.0-GCC-8.3.0")
end

if not ( isloaded("networkx/2.4-foss-2019b-Python-3.7.4") ) then
    load("networkx/2.4-foss-2019b-Python-3.7.4")
end

if not ( isloaded("edlib/1.3.8.post1-GCC-8.3.0-Python-3.7.4") ) then
    load("edlib/1.3.8.post1-GCC-8.3.0-Python-3.7.4")
end

if not ( isloaded("pyspoa/0.0.4-GCC-8.3.0-Python-3.7.4") ) then
    load("pyspoa/0.0.4-GCC-8.3.0-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMEDAKA", root)
setenv("EBVERSIONMEDAKA", "1.2.3")
setenv("EBDEVELMEDAKA", pathJoin(root, "logs/medaka-1.2.3-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTMEDAKA", "sortedcontainers-2.3.0,intervaltree-3.1.0,mappy-2.17,progressbar33-2.4,ont-fast5-api-3.1.6,parasail-1.2,pyfaidx-0.5.9.1,xopen-0.9.0,whatshap-1.0,medaka-1.2.3")
