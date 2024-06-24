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
deepTools-3.5.1, deeptoolsintervals-0.1.9, numpydoc-1.2, py2bit-0.3.0
]==])

whatis([==[Description: deepTools is a suite of python tools particularly developed for the efficient analysis of
 high-throughput sequencing data, such as ChIP-seq, RNA-seq or MNase-seq.]==])
whatis([==[Homepage: https://deeptools.readthedocs.io/]==])
whatis([==[URL: https://deeptools.readthedocs.io/]==])
whatis([==[Extensions: deepTools-3.5.1, deeptoolsintervals-0.1.9, numpydoc-1.2, py2bit-0.3.0]==])

local root = "/app/software/deepTools/3.5.1-foss-2021b"

conflict("deepTools")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("plotly.py/5.4.0-GCCcore-11.2.0") ) then
    load("plotly.py/5.4.0-GCCcore-11.2.0")
end

if not ( isloaded("Pysam/0.18.0-GCC-11.2.0") ) then
    load("Pysam/0.18.0-GCC-11.2.0")
end

if not ( isloaded("pyBigWig/0.3.18-foss-2021b") ) then
    load("pyBigWig/0.3.18-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDEEPTOOLS", root)
setenv("EBVERSIONDEEPTOOLS", "3.5.1")
setenv("EBDEVELDEEPTOOLS", pathJoin(root, "logs/deepTools-3.5.1-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
setenv("EBEXTSLISTDEEPTOOLS", "py2bit-0.3.0,deeptoolsintervals-0.1.9,numpydoc-1.2,deepTools-3.5.1")
