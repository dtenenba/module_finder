help([==[

Description
===========
dill extends python's pickle module for serializing and de-serializing python objects to the majority
 of the built-in python types. Serialization is the process of converting an object to a byte stream, and the inverse
 of which is converting a byte stream back to on python object hierarchy.


More information
================
 - Homepage: https://pypi.org/project/dill/
]==])

whatis([==[Description: dill extends python's pickle module for serializing and de-serializing python objects to the majority
 of the built-in python types. Serialization is the process of converting an object to a byte stream, and the inverse
 of which is converting a byte stream back to on python object hierarchy.]==])
whatis([==[Homepage: https://pypi.org/project/dill/]==])
whatis([==[URL: https://pypi.org/project/dill/]==])

local root = "/app/software/dill/0.3.6-GCCcore-11.3.0"

conflict("dill")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDILL", root)
setenv("EBVERSIONDILL", "0.3.6")
setenv("EBDEVELDILL", pathJoin(root, "logs/dill-0.3.6-GCCcore-11.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
