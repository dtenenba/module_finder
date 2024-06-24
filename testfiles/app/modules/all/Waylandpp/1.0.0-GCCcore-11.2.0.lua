help([==[

Description
===========
Wayland is an object oriented display protocol, which 
features request and events. Requests can be seen as method calls on 
certain objects, whereas events can be seen as signals of an object. 
This makes the Wayland protocol a perfect candidate for a C++ binding.

The goal of this library is to create such a C++ binding for Wayland 
using the most modern C++ technology currently available, providing 
an easy to use C++ API to Wayland.


More information
================
 - Homepage: https://github.com/NilsBrause/waylandpp
]==])

whatis([==[Description: Wayland is an object oriented display protocol, which 
features request and events. Requests can be seen as method calls on 
certain objects, whereas events can be seen as signals of an object. 
This makes the Wayland protocol a perfect candidate for a C++ binding.

The goal of this library is to create such a C++ binding for Wayland 
using the most modern C++ technology currently available, providing 
an easy to use C++ API to Wayland.]==])
whatis([==[Homepage: https://github.com/NilsBrause/waylandpp]==])
whatis([==[URL: https://github.com/NilsBrause/waylandpp]==])

local root = "/app/software/Waylandpp/1.0.0-GCCcore-11.2.0"

conflict("Waylandpp")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("pugixml/1.12.1-GCCcore-11.2.0") ) then
    load("pugixml/1.12.1-GCCcore-11.2.0")
end

if not ( isloaded("Wayland/1.21.0-GCCcore-11.2.0") ) then
    load("Wayland/1.21.0-GCCcore-11.2.0")
end

if not ( isloaded("freeglut/3.2.1-GCCcore-11.2.0") ) then
    load("freeglut/3.2.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTWAYLANDPP", root)
setenv("EBVERSIONWAYLANDPP", "1.0.0")
setenv("EBDEVELWAYLANDPP", pathJoin(root, "logs/Waylandpp-1.0.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
