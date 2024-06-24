help([==[

Description
===========
PyClone is a Bayesian clustering method for grouping sets of deeply sequenced
 somatic mutations into putative clonal clusters while estimating their cellular prevalences and
 accounting for allelic imbalances introduced by segmental copy-number changes and normal-cell
 contamination.


More information
================
 - Homepage: https://github.com/Roth-Lab/pyclone


Included extensions
===================
pyclone-0.13.1, pydp-0.2.4
]==])

whatis([==[Description: PyClone is a Bayesian clustering method for grouping sets of deeply sequenced
 somatic mutations into putative clonal clusters while estimating their cellular prevalences and
 accounting for allelic imbalances introduced by segmental copy-number changes and normal-cell
 contamination.]==])
whatis([==[Homepage: https://github.com/Roth-Lab/pyclone]==])
whatis([==[URL: https://github.com/Roth-Lab/pyclone]==])
whatis([==[Extensions: pyclone-0.13.1, pydp-0.2.4]==])

local root = "/app/software/pyclone/0.13.1-foss-2019b-Python-2.7.16"

conflict("pyclone")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-2.7.16") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-2.7.16")
end

if not ( isloaded("PyYAML/5.1.2-GCC-8.3.0-Python-2.7.16") ) then
    load("PyYAML/5.1.2-GCC-8.3.0-Python-2.7.16")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYCLONE", root)
setenv("EBVERSIONPYCLONE", "0.13.1")
setenv("EBDEVELPYCLONE", pathJoin(root, "logs/pyclone-0.13.1-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTPYCLONE", "pydp-0.2.4,pyclone-0.13.1")
