help([==[

Description
===========
Complete Gradle install.
From mobile apps to microservices, from small startups to big enterprises,
Gradle helps teams build, automate and deliver better software, faster.


More information
================
 - Homepage: https://gradle.org
]==])

whatis([==[Description: Complete Gradle install.
From mobile apps to microservices, from small startups to big enterprises,
Gradle helps teams build, automate and deliver better software, faster.
]==])
whatis([==[Homepage: https://gradle.org]==])
whatis([==[URL: https://gradle.org]==])

local root = "/app/software/Gradle/8.6-Java-17"

conflict("Gradle")

if not ( isloaded("Java/17") ) then
    load("Java/17")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGRADLE", root)
setenv("EBVERSIONGRADLE", "8.6")
setenv("EBDEVELGRADLE", pathJoin(root, "logs/Gradle-8.6-Java-17-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.9.1
