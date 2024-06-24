help([==[

Description
===========
Java Platform, Standard Edition (Java SE) lets you develop and deploy
Java applications on desktops and servers.


More information
================
 - Homepage: http://openjdk.java.net
]==])

whatis([==[Description: Java Platform, Standard Edition (Java SE) lets you develop and deploy
Java applications on desktops and servers.]==])
whatis([==[Homepage: http://openjdk.java.net]==])
whatis([==[URL: http://openjdk.java.net]==])

local root = "/app/software/Java/17.0.6"

conflict("Java")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJAVA", root)
setenv("EBVERSIONJAVA", "17.0.6")
setenv("EBDEVELJAVA", pathJoin(root, "logs/Java-17.0.6-easybuild-devel"))

prepend_path("PATH", root)
setenv("JAVA_HOME", "/app/software/Java/17.0.6")
-- Built with EasyBuild version 4.9.0
