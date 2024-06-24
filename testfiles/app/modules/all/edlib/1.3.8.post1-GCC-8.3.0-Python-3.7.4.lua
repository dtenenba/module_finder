help([==[

Description
===========
Lightweight, super fast library for sequence alignment using edit (Levenshtein) distance.


More information
================
 - Homepage: https://martinsos.github.io/edlib
]==])

whatis([==[Description: Lightweight, super fast library for sequence alignment using edit (Levenshtein) distance.]==])
whatis([==[Homepage: https://martinsos.github.io/edlib]==])
whatis([==[URL: https://martinsos.github.io/edlib]==])

local root = "/app/software/edlib/1.3.8.post1-GCC-8.3.0-Python-3.7.4"

conflict("edlib")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTEDLIB", root)
setenv("EBVERSIONEDLIB", "1.3.8.post1")
setenv("EBDEVELEDLIB", pathJoin(root, "logs/edlib-1.3.8.post1-GCC-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.1
