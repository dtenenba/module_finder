help([==[

Description
===========
OpenMM is a toolkit for molecular simulation.


More information
================
 - Homepage: https://openmm.org
]==])

whatis([==[Description: OpenMM is a toolkit for molecular simulation.]==])
whatis([==[Homepage: https://openmm.org]==])
whatis([==[URL: https://openmm.org]==])

local root = "/app/software/OpenMM/7.5.1-foss-2021b-CUDA-11.4.1"

conflict("OpenMM")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("SWIG/4.0.2-GCCcore-11.2.0") ) then
    load("SWIG/4.0.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOPENMM", root)
setenv("EBVERSIONOPENMM", "7.5.1")
setenv("EBDEVELOPENMM", pathJoin(root, "logs/OpenMM-7.5.1-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
prepend_path("OPENMM_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("OPENMM_LIB_PATH", pathJoin(root, "lib"))
-- Built with EasyBuild version 4.8.0
