help([==[

Description
===========
The X protocol C-language Binding (XCB) is a replacement for Xlib featuring
 a small footprint, latency hiding, direct access to the protocol, improved
 threading support, and extensibility.


More information
================
 - Homepage: http://xcb.freedesktop.org/
]==])

whatis([==[Description: 
 The X protocol C-language Binding (XCB) is a replacement for Xlib featuring
 a small footprint, latency hiding, direct access to the protocol, improved
 threading support, and extensibility.
]==])
whatis([==[Homepage: http://xcb.freedesktop.org/]==])
whatis([==[URL: http://xcb.freedesktop.org/]==])

local root = "/app/software/libpthread-stubs/0.4-GCCcore-8.3.0"

conflict("libpthread-stubs")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBPTHREADMINSTUBS", root)
setenv("EBVERSIONLIBPTHREADMINSTUBS", "0.4")
setenv("EBDEVELLIBPTHREADMINSTUBS", pathJoin(root, "logs/libpthread-stubs-0.4-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
