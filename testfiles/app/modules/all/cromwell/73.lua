help([==[

Description
===========
Scientific workflow engine designed for simplicity & scalability.


More information
================
 - Homepage: https://github.com/broadinstitute/cromwell
]==])

whatis([==[Description: Scientific workflow engine designed for simplicity & scalability.]==])
whatis([==[Homepage: https://github.com/broadinstitute/cromwell]==])
whatis([==[URL: https://github.com/broadinstitute/cromwell]==])

local root = "/app/software/cromwell/73"

conflict("cromwell")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "cromwell-73.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCROMWELL", root)
setenv("EBVERSIONCROMWELL", "73")
setenv("EBDEVELCROMWELL", pathJoin(root, "logs/cromwell-73-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute cromwell run: java -jar $EBROOTCROMWELL/cromwell-73.jar
]==])
end
prepend_path("PATH", root)
-- Built with EasyBuild version 4.5.1
