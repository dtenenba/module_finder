help([==[

Description
===========
A simple, correct Python build frontend.


More information
================
 - Homepage: https://github.com/pypa/build


Included extensions
===================
build-1.0.3, packaging-23.2, pyproject_hooks-1.0.0
]==])

whatis([==[Description: A simple, correct Python build frontend.]==])
whatis([==[Homepage: https://github.com/pypa/build]==])
whatis([==[URL: https://github.com/pypa/build]==])
whatis([==[Extensions: build-1.0.3, packaging-23.2, pyproject_hooks-1.0.0]==])

local root = "/app/software/build/1.0.3-foss-2023a"

conflict("build")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBUILD", root)
setenv("EBVERSIONBUILD", "1.0.3")
setenv("EBDEVELBUILD", pathJoin(root, "logs/build-1.0.3-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTBUILD", "packaging-23.2,pyproject_hooks-1.0.0,build-1.0.3")
