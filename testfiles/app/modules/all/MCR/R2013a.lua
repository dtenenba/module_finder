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

local root = "/app/lib/MCR/MATLAB_Compiler_Runtime/v81"

conflict("MCR")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "bin/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "sys/os/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "sys/java/jre/glnxa64/jre/lib/amd64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "sys/java/jre/glnxa64/jre/lib/amd64/server"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "sys/java/jre/glnxa64/jre/lib/amd64/native_threads"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "sys/os/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "runtime/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))

setenv("MCR_VERSION", "v81")
setenv("XAPPLRESDIR", "/app/lib/MCR/MATLAB_Compiler_Runtime/v81/X11/app-defaults")
setenv("MCRROOT", "/app/lib/MCR/MATLAB_Compiler_Runtime/v81")
-- handbuilt - Built by hand with VIM by John Dey - Aug 20, 2020
