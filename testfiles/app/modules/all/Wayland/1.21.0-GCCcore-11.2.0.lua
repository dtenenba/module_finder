help([==[

Description
===========
Wayland is a project to define a protocol for a compositor to talk to
 its clients as well as a library implementation of the protocol.  The
 compositor can be a standalone display server running on Linux kernel
 modesetting and evdev input devices, an X application, or a wayland
 client itself.  The clients can be traditional applications, X servers
 (rootless or fullscreen) or other display servers.


More information
================
 - Homepage: https://wayland.freedesktop.org/
]==])

whatis([==[Description: 
Wayland is a project to define a protocol for a compositor to talk to
 its clients as well as a library implementation of the protocol.  The
 compositor can be a standalone display server running on Linux kernel
 modesetting and evdev input devices, an X application, or a wayland
 client itself.  The clients can be traditional applications, X servers
 (rootless or fullscreen) or other display servers.
]==])
whatis([==[Homepage: https://wayland.freedesktop.org/]==])
whatis([==[URL: https://wayland.freedesktop.org/]==])

local root = "/app/software/Wayland/1.21.0-GCCcore-11.2.0"

conflict("Wayland")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("libffi/3.4.2-GCCcore-11.2.0") ) then
    load("libffi/3.4.2-GCCcore-11.2.0")
end

if not ( isloaded("expat/2.4.1-GCCcore-11.2.0") ) then
    load("expat/2.4.1-GCCcore-11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTWAYLAND", root)
setenv("EBVERSIONWAYLAND", "1.21.0")
setenv("EBDEVELWAYLAND", pathJoin(root, "logs/Wayland-1.21.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
