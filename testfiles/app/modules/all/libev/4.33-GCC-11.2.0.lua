help([==[

Description
===========
A full-featured and high-performance (see benchmark) 
event loop that is loosely modelled after libevent, but without its 
limitations and bugs. It is used in GNU Virtual Private Ethernet, 
rxvt-unicode, auditd, the Deliantra MORPG Server and Client, and many 
other programs.


More information
================
 - Homepage: http://software.schmorp.de/pkg/libev.html
]==])

whatis([==[Description: A full-featured and high-performance (see benchmark) 
event loop that is loosely modelled after libevent, but without its 
limitations and bugs. It is used in GNU Virtual Private Ethernet, 
rxvt-unicode, auditd, the Deliantra MORPG Server and Client, and many 
other programs.]==])
whatis([==[Homepage: http://software.schmorp.de/pkg/libev.html]==])
whatis([==[URL: http://software.schmorp.de/pkg/libev.html]==])

local root = "/app/software/libev/4.33-GCC-11.2.0"

conflict("libev")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBEV", root)
setenv("EBVERSIONLIBEV", "4.33")
setenv("EBDEVELLIBEV", pathJoin(root, "logs/libev-4.33-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
