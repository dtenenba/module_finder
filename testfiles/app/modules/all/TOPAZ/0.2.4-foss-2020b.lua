help([==[

Description
===========
Topaz is a pipeline for particle picking in cryo-electron micrographs using neural networks and positive-unlabeled learning


More information
================
 - Homepage: http://cb.csail.mit.edu/cb/topaz/


Included extensions
===================
TOPAZ-0.2.4, torch-1.8.1, torchvision-0.9.1, typing-extensions-3.7.4.2
]==])

whatis([==[Description: Topaz is a pipeline for particle picking in cryo-electron micrographs using neural networks and positive-unlabeled learning]==])
whatis([==[Homepage: http://cb.csail.mit.edu/cb/topaz/]==])
whatis([==[URL: http://cb.csail.mit.edu/cb/topaz/]==])
whatis([==[Extensions: TOPAZ-0.2.4, torch-1.8.1, torchvision-0.9.1, typing-extensions-3.7.4.2]==])

local root = "/app/software/TOPAZ/0.2.4-foss-2020b"

conflict("TOPAZ")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("scikit-learn/0.23.2-foss-2020b") ) then
    load("scikit-learn/0.23.2-foss-2020b")
end

if not ( isloaded("Pillow/8.0.1-GCCcore-10.2.0") ) then
    load("Pillow/8.0.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTOPAZ", root)
setenv("EBVERSIONTOPAZ", "0.2.4")
setenv("EBDEVELTOPAZ", pathJoin(root, "logs/TOPAZ-0.2.4-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTTOPAZ", "typing-extensions-3.7.4.2,torch-1.8.1,torchvision-0.9.1,TOPAZ-0.2.4")
