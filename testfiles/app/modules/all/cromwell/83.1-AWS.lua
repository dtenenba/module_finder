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

local root = "/app/software/cromwell/83.1-AWS"

conflict("cromwell")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "cromwell.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCROMWELL", root)
setenv("EBVERSIONCROMWELL", "83.1-AWS")
setenv("EBDEVELCROMWELL", pathJoin(root, "logs/cromwell-83.1-AWS-easybuild-devel"))

prepend_path("CLASSPATH", root)

if mode() == "load" then
io.stderr:write([==[To execute cromwell, run: java -jar $EBROOTCROMWELL/cromwell.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "cromwell-83-490d683-SNAP.jar"))
-- Built with EasyBuild version 4.6.2
