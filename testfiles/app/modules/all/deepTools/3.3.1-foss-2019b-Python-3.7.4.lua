help([==[

Description
===========
deepTools is a suite of python tools particularly developed for the efficient analysis of
 high-throughput sequencing data, such as ChIP-seq, RNA-seq or MNase-seq.


More information
================
 - Homepage: https://deeptools.readthedocs.io/


Included extensions
===================
deepTools-3.3.1, deeptoolsintervals-0.1.9, plotly-4.4.1, py2bit-0.3.0,
pyBigWig-0.3.17, retrying-1.3.3
]==])

whatis([==[Description: deepTools is a suite of python tools particularly developed for the efficient analysis of
 high-throughput sequencing data, such as ChIP-seq, RNA-seq or MNase-seq.]==])
whatis([==[Homepage: https://deeptools.readthedocs.io/]==])
whatis([==[URL: https://deeptools.readthedocs.io/]==])
whatis([==[Extensions: deepTools-3.3.1, deeptoolsintervals-0.1.9, plotly-4.4.1, py2bit-0.3.0, pyBigWig-0.3.17, retrying-1.3.3]==])

local root = "/app/software/deepTools/3.3.1-foss-2019b-Python-3.7.4"

conflict("deepTools")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4") ) then
    load("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTDEEPTOOLS", root)
setenv("EBVERSIONDEEPTOOLS", "3.3.1")
setenv("EBDEVELDEEPTOOLS", pathJoin(root, "logs/deepTools-3.3.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.0
setenv("EBEXTSLISTDEEPTOOLS", "retrying-1.3.3,plotly-4.4.1,py2bit-0.3.0,pyBigWig-0.3.17,deeptoolsintervals-0.1.9,deepTools-3.3.1")
