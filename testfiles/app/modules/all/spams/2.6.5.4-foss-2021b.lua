help([==[

Description
===========
SPAMS (SPArse Modeling Software) is an optimization toolbox for solving various
 sparse estimation problems.


More information
================
 - Homepage: https://thoth.inrialpes.fr/people/mairal/spams/


Included extensions
===================
spams-2.6.5.4
]==])

whatis([==[Description: SPAMS (SPArse Modeling Software) is an optimization toolbox for solving various
 sparse estimation problems.]==])
whatis([==[Homepage: https://thoth.inrialpes.fr/people/mairal/spams/]==])
whatis([==[URL: https://thoth.inrialpes.fr/people/mairal/spams/]==])
whatis([==[Extensions: spams-2.6.5.4]==])

local root = "/app/software/spams/2.6.5.4-foss-2021b"

conflict("spams")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2021b") ) then
    load("SciPy-bundle/2022.05-foss-2021b")
end

if not ( isloaded("Pillow/8.3.2-GCCcore-11.2.0") ) then
    load("Pillow/8.3.2-GCCcore-11.2.0")
end

if not ( isloaded("LAPACK/3.10.1-GCC-11.2.0") ) then
    load("LAPACK/3.10.1-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSPAMS", root)
setenv("EBVERSIONSPAMS", "2.6.5.4")
setenv("EBDEVELSPAMS", pathJoin(root, "logs/spams-2.6.5.4-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
setenv("EBEXTSLISTSPAMS", "spams-2.6.5.4")
