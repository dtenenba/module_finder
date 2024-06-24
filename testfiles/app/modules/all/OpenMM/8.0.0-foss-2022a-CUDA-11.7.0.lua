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

local root = "/app/software/OpenMM/8.0.0-foss-2022a-CUDA-11.7.0"

conflict("OpenMM")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

if not ( isloaded("SWIG/4.0.2-GCCcore-11.3.0") ) then
    load("SWIG/4.0.2-GCCcore-11.3.0")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOPENMM", root)
setenv("EBVERSIONOPENMM", "8.0.0")
setenv("EBDEVELOPENMM", pathJoin(root, "logs/OpenMM-8.0.0-foss-2022a-CUDA-11.7.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages/OpenMM-8.0.0-py3.10-linux-x86_64.egg"))
prepend_path("OPENMM_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("OPENMM_LIB_PATH", pathJoin(root, "lib"))
-- Built with EasyBuild version 4.8.2
