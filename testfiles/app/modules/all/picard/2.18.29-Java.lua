help([==[

Description
===========
A set of tools (in Java) for working with next generation sequencing data in the BAM format.


More information
================
 - Homepage: http://sourceforge.net/projects/picard
]==])

whatis([==[Description: A set of tools (in Java) for working with next generation sequencing data in the BAM format.]==])
whatis([==[Homepage: http://sourceforge.net/projects/picard]==])

local root = "/app/software/picard/2.18.29-Java"

conflict("picard")

if not isloaded("Java/1.8") then
    load("Java/1.8")
end

prepend_path("CLASSPATH", pathJoin(root, "picard.jar"))
setenv("EBROOTPICARD", root)
setenv("EBVERSIONPICARD", "2.18.29")
setenv("EBDEVELPICARD", pathJoin(root, "/app/logs/picard-2.18.29-Java-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute picard run: java -jar $EBROOTPICARD/picard.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "picard-2.18.29.jar"))
-- Built with EasyBuild version 3.8.1
