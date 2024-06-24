help([==[

Description
===========
The OpenGL Extension Wrangler Library (GLEW) is a cross-platform open-source
C/C++ extension loading library. GLEW provides efficient run-time mechanisms
for determining which OpenGL extensions are supported on the target platform.


More information
================
 - Homepage: https://github.com/nigels-com/glew
]==])

whatis([==[Description: The OpenGL Extension Wrangler Library (GLEW) is a cross-platform open-source
C/C++ extension loading library. GLEW provides efficient run-time mechanisms
for determining which OpenGL extensions are supported on the target platform.]==])
whatis([==[Homepage: https://github.com/nigels-com/glew]==])
whatis([==[URL: https://github.com/nigels-com/glew]==])

local root = "/app/software/glew/2.2.0-GCCcore-11.2.0-glx"

conflict("glew")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Mesa/21.1.7-GCCcore-11.2.0") ) then
    load("Mesa/21.1.7-GCCcore-11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGLEW", root)
setenv("EBVERSIONGLEW", "2.2.0")
setenv("EBDEVELGLEW", pathJoin(root, "logs/glew-2.2.0-GCCcore-11.2.0-glx-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
