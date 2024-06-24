help([==[

Description
===========
Scikit-Build, or skbuild, is an improved build system generator
for CPython C/C++/Fortran/Cython extensions.


More information
================
 - Homepage: https://scikit-build.readthedocs.io/en/latest


Included extensions
===================
distro-1.5.0, scikit-build-0.11.1
]==])

whatis([==[Description: Scikit-Build, or skbuild, is an improved build system generator
for CPython C/C++/Fortran/Cython extensions.]==])
whatis([==[Homepage: https://scikit-build.readthedocs.io/en/latest]==])
whatis([==[URL: https://scikit-build.readthedocs.io/en/latest]==])
whatis([==[Extensions: distro-1.5.0, scikit-build-0.11.1]==])

local root = "/app/software/scikit-build/0.11.1-foss-2020b"

conflict("scikit-build")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIKITMINBUILD", root)
setenv("EBVERSIONSCIKITMINBUILD", "0.11.1")
setenv("EBDEVELSCIKITMINBUILD", pathJoin(root, "logs/scikit-build-0.11.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.1
setenv("EBEXTSLISTSCIKITMINBUILD", "distro-1.5.0,scikit-build-0.11.1")
