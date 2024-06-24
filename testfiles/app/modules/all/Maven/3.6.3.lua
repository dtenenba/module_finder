help([==[

Description
===========
Binary maven install, Apache Maven is a software project management and comprehension tool. Based on
the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a
central piece of information.


More information
================
 - Homepage: https://maven.apache.org/index.html
]==])

whatis([==[Description: Binary maven install, Apache Maven is a software project management and comprehension tool. Based on
the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a
central piece of information.
]==])
whatis([==[Homepage: https://maven.apache.org/index.html]==])
whatis([==[URL: https://maven.apache.org/index.html]==])

local root = "/app/software/Maven/3.6.3"

conflict("Maven")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAVEN", root)
setenv("EBVERSIONMAVEN", "3.6.3")
setenv("EBDEVELMAVEN", pathJoin(root, "logs/Maven-3.6.3-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.3
