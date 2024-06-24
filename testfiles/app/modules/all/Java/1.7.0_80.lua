help([==[

Description
===========
Java Platform, Standard Edition (Java SE) lets you develop and deploy
 Java applications on desktops and servers.


More information
================
 - Homepage: http://java.com/
]==])

whatis([==[Description: Java Platform, Standard Edition (Java SE) lets you develop and deploy
 Java applications on desktops and servers.]==])
whatis([==[Homepage: http://java.com/]==])
whatis([==[URL: http://java.com/]==])

local root = "/app/software/Java/1.7.0_80"

conflict("Java")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJAVA", root)
setenv("EBVERSIONJAVA", "1.7.0_80")
setenv("EBDEVELJAVA", pathJoin(root, "logs/Java-1.7.0_80-easybuild-devel"))

prepend_path("PATH", root)
setenv("JAVA_HOME", "/app/software/Java/1.7.0_80")
-- Built with EasyBuild version 4.2.2
