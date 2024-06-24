help([==[

Description
===========
WPE is the reference WebKit port for embedded and 
low-consumption computer devices. It has been designed from the 
ground-up with performance, small footprint, accelerated content 
rendering, and simplicity of deployment in mind, bringing the 
excellence of the WebKit engine to countless platforms and target devices.


More information
================
 - Homepage: https://webkit.org/wpe
]==])

whatis([==[Description: WPE is the reference WebKit port for embedded and 
low-consumption computer devices. It has been designed from the 
ground-up with performance, small footprint, accelerated content 
rendering, and simplicity of deployment in mind, bringing the 
excellence of the WebKit engine to countless platforms and target devices.]==])
whatis([==[Homepage: https://webkit.org/wpe]==])
whatis([==[URL: https://webkit.org/wpe]==])

local root = "/app/software/libwpe/1.13.3-GCCcore-11.2.0"

conflict("libwpe")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("glew/2.2.0-GCCcore-11.2.0-egl") ) then
    load("glew/2.2.0-GCCcore-11.2.0-egl")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBWPE", root)
setenv("EBVERSIONLIBWPE", "1.13.3")
setenv("EBDEVELLIBWPE", pathJoin(root, "logs/libwpe-1.13.3-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
