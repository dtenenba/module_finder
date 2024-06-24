help([==[

Description
===========
DeepDiff: Deep Difference of dictionaries, iterables and almost any other object recursively.


More information
================
 - Homepage: https://zepworks.com/deepdiff/current/


Included extensions
===================
deepdiff-6.7.1, jsonpickle-3.0.2, ordered-set-4.1.0
]==])

whatis([==[Description: DeepDiff: Deep Difference of dictionaries, iterables and almost any other object recursively.]==])
whatis([==[Homepage: https://zepworks.com/deepdiff/current/]==])
whatis([==[URL: https://zepworks.com/deepdiff/current/]==])
whatis([==[Extensions: deepdiff-6.7.1, jsonpickle-3.0.2, ordered-set-4.1.0]==])

local root = "/app/software/deepdiff/6.7.1-GCCcore-12.3.0"

conflict("deepdiff")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDEEPDIFF", root)
setenv("EBVERSIONDEEPDIFF", "6.7.1")
setenv("EBDEVELDEEPDIFF", pathJoin(root, "logs/deepdiff-6.7.1-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTDEEPDIFF", "jsonpickle-3.0.2,ordered-set-4.1.0,deepdiff-6.7.1")
