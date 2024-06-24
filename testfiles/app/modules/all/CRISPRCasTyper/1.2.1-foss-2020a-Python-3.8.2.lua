help([==[

Description
===========
Detect CRISPR-Cas genes and arrays, and predict the subtype based on both Cas genes and CRISPR repeat sequence.


More information
================
 - Homepage: https://github.com/Russel88/CRISPRCasTyper


Included extensions
===================
cctyper-1.2.1, dill-0.3.2, multiprocess-0.70.10, Pillow-7.2.0, tqdm-4.47.0,
xgboost-1.1.1
]==])

whatis([==[Description: Detect CRISPR-Cas genes and arrays, and predict the subtype based on both Cas genes and CRISPR repeat sequence.]==])
whatis([==[Homepage: https://github.com/Russel88/CRISPRCasTyper]==])
whatis([==[URL: https://github.com/Russel88/CRISPRCasTyper]==])
whatis([==[Extensions: cctyper-1.2.1, dill-0.3.2, multiprocess-0.70.10, Pillow-7.2.0, tqdm-4.47.0, xgboost-1.1.1]==])

local root = "/app/software/CRISPRCasTyper/1.2.1-foss-2020a-Python-3.8.2"

conflict("CRISPRCasTyper")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("Biopython/1.77-foss-2020a-Python-3.8.2") ) then
    load("Biopython/1.77-foss-2020a-Python-3.8.2")
end

if not ( isloaded("Pillow/7.0.0-GCCcore-9.3.0-Python-3.8.2") ) then
    load("Pillow/7.0.0-GCCcore-9.3.0-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCRISPRCASTYPER", root)
setenv("EBVERSIONCRISPRCASTYPER", "1.2.1")
setenv("EBDEVELCRISPRCASTYPER", pathJoin(root, "logs/CRISPRCasTyper-1.2.1-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTCRISPRCASTYPER", "xgboost-1.1.1,dill-0.3.2,multiprocess-0.70.10,tqdm-4.47.0,Pillow-7.2.0,cctyper-1.2.1")
