help([==[

Description
===========
sbt is a build tool for Scala, Java, and more.


More information
================
 - Homepage: http://www.scala-sbt.org/
]==])

whatis([==[Description: sbt is a build tool for Scala, Java, and more.]==])
whatis([==[Homepage: http://www.scala-sbt.org/]==])
whatis([==[URL: http://www.scala-sbt.org/]==])

local root = "/app/software/sbt/1.7.2-Java-1.8"

conflict("sbt")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSBT", root)
setenv("EBVERSIONSBT", "1.7.2")
setenv("EBDEVELSBT", pathJoin(root, "logs/sbt-1.7.2-Java-1.8-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
