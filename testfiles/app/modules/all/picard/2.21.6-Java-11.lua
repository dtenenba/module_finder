help([==[

Description
===========
A set of tools (in Java) for working with next generation sequencing data in the BAM format.


More information
================
 - Homepage: https://sourceforge.net/projects/picard
]==])

whatis([==[Description: A set of tools (in Java) for working with next generation sequencing data in the BAM format.]==])
whatis([==[Homepage: https://sourceforge.net/projects/picard]==])
whatis([==[URL: https://sourceforge.net/projects/picard]==])

local root = "/app/software/picard/2.21.6-Java-11"

conflict("picard")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "picard.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPICARD", root)
setenv("EBVERSIONPICARD", "2.21.6")
setenv("EBDEVELPICARD", pathJoin(root, "logs/picard-2.21.6-Java-11-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute picard run: java -jar $EBROOTPICARD/picard.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "picard-2.21.6.jar"))
-- Built with EasyBuild version 4.2.1
