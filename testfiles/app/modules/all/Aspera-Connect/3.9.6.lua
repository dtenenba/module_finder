help([==[

Description
===========
Connect is an install-on-demand Web browser plug-in that facilitates high-speed uploads and
 downloads with an Aspera transfer server.


More information
================
 - Homepage: http://downloads.asperasoft.com/connect2/
]==])

whatis([==[Description: Connect is an install-on-demand Web browser plug-in that facilitates high-speed uploads and
 downloads with an Aspera transfer server.]==])
whatis([==[Homepage: http://downloads.asperasoft.com/connect2/]==])
whatis([==[URL: http://downloads.asperasoft.com/connect2/]==])

local root = "/app/software/Aspera-Connect/3.9.6"

conflict("Aspera-Connect")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTASPERAMINCONNECT", root)
setenv("EBVERSIONASPERAMINCONNECT", "3.9.6")
setenv("EBDEVELASPERAMINCONNECT", pathJoin(root, "logs/Aspera-Connect-3.9.6-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
