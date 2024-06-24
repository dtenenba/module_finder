help([==[

Description
===========
Apache Ant is a Java library and command-line tool whose mission is to drive processes described in
 build files as targets and extension points dependent upon each other. The main known usage of Ant is the build of
 Java applications.


More information
================
 - Homepage: http://ant.apache.org/
]==])

whatis([==[Description: Apache Ant is a Java library and command-line tool whose mission is to drive processes described in
 build files as targets and extension points dependent upon each other. The main known usage of Ant is the build of
 Java applications.]==])
whatis([==[Homepage: http://ant.apache.org/]==])

local root = "/app/software/ant/1.10.1-Java-1.8"

conflict("ant")

if not isloaded("Java/1.8") then
    load("Java/1.8")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTANT", root)
setenv("EBVERSIONANT", "1.10.1")
setenv("EBDEVELANT", pathJoin(root, "/app/logs/ant-1.10.1-Java-1.8-easybuild-devel"))

setenv("ANT_HOME", "/app/software/ant/1.10.1-Java-1.8")
prepend_path("PATH", root)
-- Built with EasyBuild version 3.8.0
