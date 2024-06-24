help([==[

Description
===========
PyClone is a Bayesian clustering method for grouping sets of deeply sequenced
 somatic mutations into putative clonal clusters while estimating their cellular prevalences and
 accounting for allelic imbalances introduced by segmental copy-number changes and normal-cell
 contamination.


More information
================
 - Homepage: https://github.com/Roth-Lab/pyclone-vi


Included extensions
===================
click-7.0, pyclone-vi-0.1.0
]==])

whatis([==[Description: PyClone is a Bayesian clustering method for grouping sets of deeply sequenced
 somatic mutations into putative clonal clusters while estimating their cellular prevalences and
 accounting for allelic imbalances introduced by segmental copy-number changes and normal-cell
 contamination.]==])
whatis([==[Homepage: https://github.com/Roth-Lab/pyclone-vi]==])
whatis([==[URL: https://github.com/Roth-Lab/pyclone-vi]==])
whatis([==[Extensions: click-7.0, pyclone-vi-0.1.0]==])

local root = "/app/software/pyclone-vi/0.1.0-foss-2019b-Python-3.7.4"

conflict("pyclone-vi")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("numba/0.47.0-foss-2019b-Python-3.7.4") ) then
    load("numba/0.47.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYCLONEMINVI", root)
setenv("EBVERSIONPYCLONEMINVI", "0.1.0")
setenv("EBDEVELPYCLONEMINVI", pathJoin(root, "logs/pyclone-vi-0.1.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTPYCLONEMINVI", "click-7.0,pyclone-vi-0.1.0")
