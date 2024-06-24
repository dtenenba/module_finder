help([==[

Description
===========
HOME (histogram of methylation) is a python package for differential methylation region (DMR)
 identification. The method uses histogram of methylation features and the linear Support Vector Machine (SVM)
 to identify DMRs from whole genome bisulfite sequencing (WGBS) data.


More information
================
 - Homepage: https://github.com/ListerLab/HOME


Included extensions
===================
HOME-1.0.0
]==])

whatis([==[Description: HOME (histogram of methylation) is a python package for differential methylation region (DMR)
 identification. The method uses histogram of methylation features and the linear Support Vector Machine (SVM)
 to identify DMRs from whole genome bisulfite sequencing (WGBS) data.]==])
whatis([==[Homepage: https://github.com/ListerLab/HOME]==])
whatis([==[URL: https://github.com/ListerLab/HOME]==])
whatis([==[Extensions: HOME-1.0.0]==])

local root = "/app/software/HOME/1.0.0-foss-2019b-Python-3.7.4"

conflict("HOME")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("scikit-learn/0.21.3-foss-2019b-Python-3.7.4") ) then
    load("scikit-learn/0.21.3-foss-2019b-Python-3.7.4")
end

if not ( isloaded("statsmodels/0.11.0-foss-2019b-Python-3.7.4") ) then
    load("statsmodels/0.11.0-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHOME", root)
setenv("EBVERSIONHOME", "1.0.0")
setenv("EBDEVELHOME", pathJoin(root, "logs/HOME-1.0.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.0
setenv("EBEXTSLISTHOME", "HOME-1.0.0")
