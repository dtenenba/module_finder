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
deepTools-3.5.4.post1, deeptoolsintervals-0.1.9, numpydoc-1.5.0, py2bit-0.3.0
]==])

whatis([==[Description: deepTools is a suite of python tools particularly developed for the efficient analysis of
 high-throughput sequencing data, such as ChIP-seq, RNA-seq or MNase-seq.]==])
whatis([==[Homepage: https://deeptools.readthedocs.io/]==])
whatis([==[URL: https://deeptools.readthedocs.io/]==])
whatis([==[Extensions: deepTools-3.5.4.post1, deeptoolsintervals-0.1.9, numpydoc-1.5.0, py2bit-0.3.0]==])

local root = "/app/software/deepTools/3.5.4.post1-gfbf-2022b"

conflict("deepTools")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("matplotlib/3.7.0-gfbf-2022b") ) then
    load("matplotlib/3.7.0-gfbf-2022b")
end

if not ( isloaded("plotly.py/5.13.1-GCCcore-12.2.0") ) then
    load("plotly.py/5.13.1-GCCcore-12.2.0")
end

if not ( isloaded("Pysam/0.21.0-GCC-12.2.0") ) then
    load("Pysam/0.21.0-GCC-12.2.0")
end

if not ( isloaded("pyBigWig/0.3.22-gfbf-2022b") ) then
    load("pyBigWig/0.3.22-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDEEPTOOLS", root)
setenv("EBVERSIONDEEPTOOLS", "3.5.4.post1")
setenv("EBDEVELDEEPTOOLS", pathJoin(root, "logs/deepTools-3.5.4.post1-gfbf-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTDEEPTOOLS", "py2bit-0.3.0,deeptoolsintervals-0.1.9,numpydoc-1.5.0,deepTools-3.5.4.post1")
