help([==[

Description
===========
Data validation and settings management using Python type hinting.


More information
================
 - Homepage: https://github.com/samuelcolvin/pydantic


Included extensions
===================
annotated_types-0.6.0, pydantic-2.5.3, pydantic_core-2.14.6
]==])

whatis([==[Description: Data validation and settings management using Python type hinting.]==])
whatis([==[Homepage: https://github.com/samuelcolvin/pydantic]==])
whatis([==[URL: https://github.com/samuelcolvin/pydantic]==])
whatis([==[Extensions: annotated_types-0.6.0, pydantic-2.5.3, pydantic_core-2.14.6]==])

local root = "/app/software/pydantic/2.5.3-GCCcore-12.3.0"

conflict("pydantic")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("typing-extensions/4.9.0-GCCcore-12.3.0") ) then
    load("typing-extensions/4.9.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYDANTIC", root)
setenv("EBVERSIONPYDANTIC", "2.5.3")
setenv("EBDEVELPYDANTIC", pathJoin(root, "logs/pydantic-2.5.3-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTPYDANTIC", "annotated_types-0.6.0,pydantic_core-2.14.6,pydantic-2.5.3")
