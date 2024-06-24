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

local root = "/app/software/OpenMM/7.5.0-foss-2020b"

conflict("OpenMM")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("FFTW/3.3.8-gompi-2020b") ) then
    load("FFTW/3.3.8-gompi-2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("SWIG/4.0.2-GCCcore-10.2.0") ) then
    load("SWIG/4.0.2-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOPENMM", root)
setenv("EBVERSIONOPENMM", "7.5.0")
setenv("EBDEVELOPENMM", pathJoin(root, "logs/OpenMM-7.5.0-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("OPENMM_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("OPENMM_LIB_PATH", pathJoin(root, "lib"))
-- Built with EasyBuild version 4.8.1
