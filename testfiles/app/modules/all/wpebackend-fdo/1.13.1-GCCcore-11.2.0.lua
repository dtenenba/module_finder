help([==[

Description
===========
WPE WebKit allows embedders to create simple and performant 
systems based on Web platform technologies. It is a WebKit port designed with 
flexibility and hardware acceleration in mind, leveraging common 3D graphics 
APIs for best performance.


More information
================
 - Homepage: https://wpewebkit.org/
]==])

whatis([==[Description: WPE WebKit allows embedders to create simple and performant 
systems based on Web platform technologies. It is a WebKit port designed with 
flexibility and hardware acceleration in mind, leveraging common 3D graphics 
APIs for best performance.]==])
whatis([==[Homepage: https://wpewebkit.org/]==])
whatis([==[URL: https://wpewebkit.org/]==])

local root = "/app/software/wpebackend-fdo/1.13.1-GCCcore-11.2.0"

conflict("wpebackend-fdo")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("pugixml/1.12.1-GCCcore-11.2.0") ) then
    load("pugixml/1.12.1-GCCcore-11.2.0")
end

if not ( isloaded("Waylandpp/1.0.0-GCCcore-11.2.0") ) then
    load("Waylandpp/1.0.0-GCCcore-11.2.0")
end

if not ( isloaded("libepoxy/1.5.8-GCCcore-11.2.0") ) then
    load("libepoxy/1.5.8-GCCcore-11.2.0")
end

if not ( isloaded("glib-networking/2.72.1-GCCcore-11.2.0") ) then
    load("glib-networking/2.72.1-GCCcore-11.2.0")
end

if not ( isloaded("libwpe/1.13.3-GCCcore-11.2.0") ) then
    load("libwpe/1.13.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTWPEBACKENDMINFDO", root)
setenv("EBVERSIONWPEBACKENDMINFDO", "1.13.1")
setenv("EBDEVELWPEBACKENDMINFDO", pathJoin(root, "logs/wpebackend-fdo-1.13.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
