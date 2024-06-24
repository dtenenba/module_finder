help([==[

Description
===========
Fast, efficient RNA-Seq metrics for quality control and process optimization


More information
================
 - Homepage: https://github.com/getzlab/rnaseqc


Included extensions
===================
agutil-4.1.1, pycryptodomex-3.9.8, qtl-0.1.8, rnaseqc-0.0.3, rsa-4.6
]==])

whatis([==[Description: Fast, efficient RNA-Seq metrics for quality control and process optimization]==])
whatis([==[Homepage: https://github.com/getzlab/rnaseqc]==])
whatis([==[URL: https://github.com/getzlab/rnaseqc]==])
whatis([==[Extensions: agutil-4.1.1, pycryptodomex-3.9.8, qtl-0.1.8, rnaseqc-0.0.3, rsa-4.6]==])

local root = "/app/software/RNA-SeQC/2.4.2-foss-2021b"

conflict("RNA-SeQC")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("bx-python/0.8.13-foss-2021b") ) then
    load("bx-python/0.8.13-foss-2021b")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("IPython/7.26.0-GCCcore-11.2.0") ) then
    load("IPython/7.26.0-GCCcore-11.2.0")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("pyBigWig/0.3.18-foss-2021b") ) then
    load("pyBigWig/0.3.18-foss-2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("Seaborn/0.11.2-foss-2021b") ) then
    load("Seaborn/0.11.2-foss-2021b")
end

if not ( isloaded("Boost/1.77.0-GCC-11.2.0") ) then
    load("Boost/1.77.0-GCC-11.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-11.2.0") ) then
    load("XZ/5.2.5-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRNAMINSEQC", root)
setenv("EBVERSIONRNAMINSEQC", "2.4.2")
setenv("EBDEVELRNAMINSEQC", pathJoin(root, "logs/RNA-SeQC-2.4.2-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.1
setenv("EBEXTSLISTRNAMINSEQC", "pycryptodomex-3.9.8,rsa-4.6,agutil-4.1.1,qtl-0.1.8,rnaseqc-0.0.3")
