help([==[

Description
===========
GNU libmicrohttpd is a small C library that is supposed to make it easy to run
 an HTTP server as part of another application.


More information
================
 - Homepage: https://www.gnu.org/software/libmicrohttpd/
]==])

whatis([==[Description: 
 GNU libmicrohttpd is a small C library that is supposed to make it easy to run
 an HTTP server as part of another application.
]==])
whatis([==[Homepage: https://www.gnu.org/software/libmicrohttpd/]==])
whatis([==[URL: https://www.gnu.org/software/libmicrohttpd/]==])

local root = "/app/software/libmicrohttpd/0.9.73-GCCcore-10.2.0"

conflict("libmicrohttpd")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("cURL/7.72.0-GCCcore-10.2.0") ) then
    load("cURL/7.72.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBMICROHTTPD", root)
setenv("EBVERSIONLIBMICROHTTPD", "0.9.73")
setenv("EBDEVELLIBMICROHTTPD", pathJoin(root, "logs/libmicrohttpd-0.9.73-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.2
