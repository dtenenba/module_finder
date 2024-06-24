help([==[

Description
===========
A programmer-oriented testing framework for Java.


More information
================
 - Homepage: http://sourceforge.net/projects/junit
]==])

whatis([==[Description: A programmer-oriented testing framework for Java.]==])
whatis([==[Homepage: http://sourceforge.net/projects/junit]==])

local root = "/app/software/JUnit/4.12-Java-1.8"

conflict("JUnit")

if not isloaded("Java/1.8") then
    load("Java/1.8")
end

prepend_path("CLASSPATH", pathJoin(root, "junit-4.12.jar"))
setenv("EBROOTJUNIT", root)
setenv("EBVERSIONJUNIT", "4.12")
setenv("EBDEVELJUNIT", pathJoin(root, "/app/logs/JUnit-4.12-Java-1.8-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "junit-4.12.jar"))
-- Built with EasyBuild version 3.8.0
