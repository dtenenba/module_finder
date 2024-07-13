help([==[

Description
===========
The MATLAB Runtime is a standalone set of shared libraries
 that enables the execution of compiled MATLAB applications
 or components on computers that do not have MATLAB installed.


More information
================
 - Homepage: http://www.mathworks.com/products/compiler/mcr/
]==])

whatis([==[Description: The MATLAB Runtime is a standalone set of shared libraries
 that enables the execution of compiled MATLAB applications
 or components on computers that do not have MATLAB installed.]==])
whatis([==[Homepage: http://www.mathworks.com/products/compiler/mcr/]==])
whatis([==[URL: http://www.mathworks.com/products/compiler/mcr/]==])

local root = "/app/software/MCR/R2020a"

conflict("MCR")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTMCR", root)
setenv("EBVERSIONMCR", "R2020a")
setenv("EBDEVELMCR", pathJoin(root, "logs/MCR-R2020a-easybuild-devel"))

prepend_path("PATH", root)
setenv("XAPPLRESDIR", "/app/software/MCR/R2020a/v98/X11/app-defaults")
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "v98/runtime/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "v98/bin/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "v98/sys/os/glnxa64"))
setenv("_JAVA_OPTIONS", "-Xmx256m")
setenv("MCRROOT", "/app/software/MCR/R2020a/v98")
-- Built with EasyBuild version 4.3.0