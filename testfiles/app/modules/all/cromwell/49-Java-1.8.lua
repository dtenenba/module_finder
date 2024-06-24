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

local root = "/app/software/cromwell/49-Java-1.8"

conflict("cromwell")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CLASSPATH", pathJoin(root, "cromwell-49.jar"))
setenv("EBROOTCROMWELL", root)
setenv("EBVERSIONCROMWELL", "49")
setenv("EBDEVELCROMWELL", pathJoin(root, "logs/cromwell-49-Java-1.8-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute cromwell run: java -jar $EBROOTCROMWELL/cromwell-49.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "cromwell-49.jar"))
-- Built with EasyBuild version 4.1.2
