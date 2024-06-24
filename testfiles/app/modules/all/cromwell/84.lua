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

local root = "/app/software/cromwell/84"

conflict("cromwell")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "womtool.jar"))
prepend_path("CLASSPATH", pathJoin(root, "cromwell.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCROMWELL", root)
setenv("EBVERSIONCROMWELL", "84")
setenv("EBDEVELCROMWELL", pathJoin(root, "logs/cromwell-84-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute cromwell, run: java -jar $EBROOTCROMWELL/cromwell.jar

To execute womtool, run: java -jar $EBROOTCROMWELL/womtool.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "cromwell-84.jar"))
prepend_path("CLASSPATH", pathJoin(root, "womtool-84.jar"))
-- Built with EasyBuild version 4.6.2
