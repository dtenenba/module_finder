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

local root = "/app/software/MCR/R2014a"

conflict("MCR")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTMCR", root)
setenv("EBVERSIONMCR", "R2014a")
setenv("EBDEVELMCR", pathJoin(root, "logs/MCR-R2014a-easybuild-devel"))

prepend_path("MCR_ROOT", root)
prepend_path("PATH", root)
setenv("XAPPLRESDIR", "/app/software/MCR/R2014a/v83/X11/app-defaults")
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "v83/runtime/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "v83/bin/glnxa64"))
-- john dey 2021.01.27 remove older versions of libstdc to allow execution on newer CPUs
-- prepend_path("LD_LIBRARY_PATH", pathJoin(root, "v83/sys/os/glnxa64"))
setenv("_JAVA_OPTIONS", "-Xmx256m")
setenv("MCRROOT", "/app/software/MCR/R2014a/v83")
-- Built with EasyBuild version 4.2.2
