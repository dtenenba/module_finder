help([==[

Description
===========
The official Reference Implementation for Java SE 11 (JSR 384)
 is based solely upon open-source code available from the JDK 11 Project in
 the OpenJDK Community.


More information
================
 - Homepage: https://openjdk.java.net/
]==])

whatis([==[Description: The official Reference Implementation for Java SE 11 (JSR 384)
 is based solely upon open-source code available from the JDK 11 Project in
 the OpenJDK Community.]==])
whatis([==[Homepage: https://openjdk.java.net/]==])

local root = "/app/software/Java/11.0.2"

conflict("Java")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/server"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJAVA", root)
setenv("EBVERSIONJAVA", "11.0.2")
setenv("EBDEVELJAVA", pathJoin(root, "/app/logs/Java-11.0.2-easybuild-devel"))

prepend_path("PATH", root)
setenv("JAVA_HOME", "/app/software/Java/11.0.2")
-- Built with EasyBuild version 3.8.1
