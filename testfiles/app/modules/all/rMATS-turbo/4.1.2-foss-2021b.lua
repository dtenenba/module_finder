help([==[

Description
===========
rMATS turbo is the C/Cython version of rMATS (refer to http://rnaseq-mats.sourceforge.net).


More information
================
 - Homepage: https://github.com/Xinglab/rmats-turbo
]==])

whatis([==[Description: rMATS turbo is the C/Cython version of rMATS (refer to http://rnaseq-mats.sourceforge.net).]==])
whatis([==[Homepage: https://github.com/Xinglab/rmats-turbo]==])
whatis([==[URL: https://github.com/Xinglab/rmats-turbo]==])

local root = "/app/software/rMATS-turbo/4.1.2-foss-2021b"

conflict("rMATS-turbo")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("GSL/2.7-GCC-11.2.0") ) then
    load("GSL/2.7-GCC-11.2.0")
end

if not ( isloaded("SAMtools/1.15.1-GCC-11.2.0") ) then
    load("SAMtools/1.15.1-GCC-11.2.0")
end

if not ( isloaded("STAR/2.7.9a-GCC-11.2.0") ) then
    load("STAR/2.7.9a-GCC-11.2.0")
end

if not ( isloaded("BamTools/2.5.2-GCC-11.2.0") ) then
    load("BamTools/2.5.2-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRMATSMINTURBO", root)
setenv("EBVERSIONRMATSMINTURBO", "4.1.2")
setenv("EBDEVELRMATSMINTURBO", pathJoin(root, "logs/rMATS-turbo-4.1.2-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.2
