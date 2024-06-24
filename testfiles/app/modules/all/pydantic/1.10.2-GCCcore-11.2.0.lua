help([==[

Description
===========
Data validation and settings management using Python type hinting.


More information
================
 - Homepage: https://github.com/samuelcolvin/pydantic


Included extensions
===================
pydantic-1.10.2, typing_extensions-4.3.0
]==])

whatis([==[Description: Data validation and settings management using Python type hinting.]==])
whatis([==[Homepage: https://github.com/samuelcolvin/pydantic]==])
whatis([==[URL: https://github.com/samuelcolvin/pydantic]==])
whatis([==[Extensions: pydantic-1.10.2, typing_extensions-4.3.0]==])

local root = "/app/software/pydantic/1.10.2-GCCcore-11.2.0"

conflict("pydantic")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYDANTIC", root)
setenv("EBVERSIONPYDANTIC", "1.10.2")
setenv("EBDEVELPYDANTIC", pathJoin(root, "logs/pydantic-1.10.2-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPYDANTIC", "typing_extensions-4.3.0,pydantic-1.10.2")
