help([==[

Description
===========
GLFW is an Open Source, multi-platform library for OpenGL,
OpenGL ES and Vulkan development on the desktop


More information
================
 - Homepage: https://www.glfw.org
]==])

whatis([==[Description: GLFW is an Open Source, multi-platform library for OpenGL,
OpenGL ES and Vulkan development on the desktop]==])
whatis([==[Homepage: https://www.glfw.org]==])
whatis([==[URL: https://www.glfw.org]==])

local root = "/app/software/GLFW/3.3.4-GCCcore-11.2.0"

conflict("GLFW")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGLFW", root)
setenv("EBVERSIONGLFW", "3.3.4")
setenv("EBDEVELGLFW", pathJoin(root, "logs/GLFW-3.3.4-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
