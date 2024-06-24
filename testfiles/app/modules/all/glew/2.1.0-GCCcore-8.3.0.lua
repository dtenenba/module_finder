help([==[

Description
===========
The OpenGL Extension Wrangler Library

The OpenGL Extension Wrangler Library (GLEW) is a cross-platform 
open-source C/C++ extension loading library. GLEW provides 
efficient run-time mechanisms for determining which OpenGL 
extensions are supported on the target platform. OpenGL 
core and extension functionality is exposed in a single header 
file. GLEW has been tested on a variety of operating systems, 
including Windows, Linux, Mac OS X, FreeBSD, Irix, and Solaris.


More information
================
 - Homepage: http://glew.sourceforge.net/
]==])

whatis([==[Description: The OpenGL Extension Wrangler Library

The OpenGL Extension Wrangler Library (GLEW) is a cross-platform 
open-source C/C++ extension loading library. GLEW provides 
efficient run-time mechanisms for determining which OpenGL 
extensions are supported on the target platform. OpenGL 
core and extension functionality is exposed in a single header 
file. GLEW has been tested on a variety of operating systems, 
including Windows, Linux, Mac OS X, FreeBSD, Irix, and Solaris.]==])
whatis([==[Homepage: http://glew.sourceforge.net/]==])
whatis([==[URL: http://glew.sourceforge.net/]==])

local root = "/app/software/glew/2.1.0-GCCcore-8.3.0"

conflict("glew")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Mesa/19.1.7-GCCcore-8.3.0") ) then
    load("Mesa/19.1.7-GCCcore-8.3.0")
end

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGLEW", root)
setenv("EBVERSIONGLEW", "2.1.0")
setenv("EBDEVELGLEW", pathJoin(root, "logs/glew-2.1.0-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
