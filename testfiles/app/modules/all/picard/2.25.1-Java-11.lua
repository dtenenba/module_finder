help([==[

Description
===========
A set of tools (in Java) for working with next generation sequencing data in the BAM format.


More information
================
 - Homepage: https://broadinstitute.github.io/picard/
]==])

whatis([==[Description: A set of tools (in Java) for working with next generation sequencing data in the BAM format.]==])
whatis([==[Homepage: https://broadinstitute.github.io/picard/]==])
whatis([==[URL: https://broadinstitute.github.io/picard/]==])

local root = "/app/software/picard/2.25.1-Java-11"

conflict("picard")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "picard.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPICARD", root)
setenv("EBVERSIONPICARD", "2.25.1")
setenv("EBDEVELPICARD", pathJoin(root, "logs/picard-2.25.1-Java-11-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute picard run: java -jar $EBROOTPICARD/picard.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "picard-2.25.1.jar"))
-- Built with EasyBuild version 4.5.4
