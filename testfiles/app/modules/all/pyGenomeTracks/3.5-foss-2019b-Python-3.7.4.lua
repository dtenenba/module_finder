help([==[

Description
===========
pyGenomeTracks aims to produce high-quality genome browser tracks that are highly customizable.


More information
================
 - Homepage: https://github.com/deeptools/pyGenomeTracks


Included extensions
===================
asciitree-0.3.3, click-7.1.2, cooler-0.8.9, cytoolz-0.10.1, dill-0.3.2,
gffutils-0.10.1, HiCMatrix-13, intervaltree-3.0.2, multiprocess-0.70.10,
numexpr-2.7.1, pyfaidx-0.5.9, pyGenomeTracks-3.5, pypairix-0.3.7,
simplejson-3.17.2, sortedcontainers-2.2.2, toolz-0.10.0, tqdm-4.48.0
]==])

whatis([==[Description: pyGenomeTracks aims to produce high-quality genome browser tracks that are highly customizable.]==])
whatis([==[Homepage: https://github.com/deeptools/pyGenomeTracks]==])
whatis([==[URL: https://github.com/deeptools/pyGenomeTracks]==])
whatis([==[Extensions: asciitree-0.3.3, click-7.1.2, cooler-0.8.9, cytoolz-0.10.1, dill-0.3.2, gffutils-0.10.1, HiCMatrix-13, intervaltree-3.0.2, multiprocess-0.70.10, numexpr-2.7.1, pyfaidx-0.5.9, pyGenomeTracks-3.5, pypairix-0.3.7, simplejson-3.17.2, sortedcontainers-2.2.2, toolz-0.10.0, tqdm-4.48.0]==])

local root = "/app/software/pyGenomeTracks/3.5-foss-2019b-Python-3.7.4"

conflict("pyGenomeTracks")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2020.06-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2020.06-foss-2019b-Python-3.7.4")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("PyTables/3.6.1-foss-2019b-Python-3.7.4") ) then
    load("PyTables/3.6.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("pyBigWig/0.3.17-foss-2019b-Python-3.7.4") ) then
    load("pyBigWig/0.3.17-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4") ) then
    load("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4")
end

if not ( isloaded("pybedtools/0.8.0-foss-2019b-Python-3.7.4") ) then
    load("pybedtools/0.8.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYGENOMETRACKS", root)
setenv("EBVERSIONPYGENOMETRACKS", "3.5")
setenv("EBDEVELPYGENOMETRACKS", pathJoin(root, "logs/pyGenomeTracks-3.5-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTPYGENOMETRACKS", "tqdm-4.48.0,sortedcontainers-2.2.2,intervaltree-3.0.2,numexpr-2.7.1,click-7.1.2,toolz-0.10.0,cytoolz-0.10.1,dill-0.3.2,multiprocess-0.70.10,pyfaidx-0.5.9,pypairix-0.3.7,asciitree-0.3.3,simplejson-3.17.2,cooler-0.8.9,HiCMatrix-13,gffutils-0.10.1,pyGenomeTracks-3.5")
