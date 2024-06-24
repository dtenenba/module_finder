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

local root = "/app/software/cromwell/57-Java-1.8"

conflict("cromwell")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CLASSPATH", pathJoin(root, "cromwell-57.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCROMWELL", root)
setenv("EBVERSIONCROMWELL", "57")
setenv("EBDEVELCROMWELL", pathJoin(root, "logs/cromwell-57-Java-1.8-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute cromwell run: java -jar $EBROOTCROMWELL/cromwell-57.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "cromwell-57.jar"))
-- Built with EasyBuild version 4.3.2
