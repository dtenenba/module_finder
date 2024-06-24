help([==[

Description
===========
A Command Line Wrapper over the Globus SDK for Python, which provides an interface to Globus services
 from the shell, and is suited to both interactive and simple scripting use cases.


More information
================
 - Homepage: https://docs.globus.org/cli/


Included extensions
===================
Globus-CLI-3.6.0, globus-sdk-3.9.0, jmespath-0.10.0, PyJWT-2.4.0, typing-
extensions-4.3.0
]==])

whatis([==[Description: A Command Line Wrapper over the Globus SDK for Python, which provides an interface to Globus services
 from the shell, and is suited to both interactive and simple scripting use cases.]==])
whatis([==[Homepage: https://docs.globus.org/cli/]==])
whatis([==[URL: https://docs.globus.org/cli/]==])
whatis([==[Extensions: Globus-CLI-3.6.0, globus-sdk-3.9.0, jmespath-0.10.0, PyJWT-2.4.0, typing-extensions-4.3.0]==])

local root = "/app/software/Globus-CLI/3.6.0-GCCcore-11.2.0"

conflict("Globus-CLI")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGLOBUSMINCLI", root)
setenv("EBVERSIONGLOBUSMINCLI", "3.6.0")
setenv("EBDEVELGLOBUSMINCLI", pathJoin(root, "logs/Globus-CLI-3.6.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.2
setenv("EBEXTSLISTGLOBUSMINCLI", "PyJWT-2.4.0,typing-extensions-4.3.0,globus-sdk-3.9.0,jmespath-0.10.0,Globus-CLI-3.6.0")
