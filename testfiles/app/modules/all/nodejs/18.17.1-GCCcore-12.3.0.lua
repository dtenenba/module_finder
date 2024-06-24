help([==[

Description
===========
Node.js is a platform built on Chrome's JavaScript runtime
 for easily building fast, scalable network applications. Node.js uses an
 event-driven, non-blocking I/O model that makes it lightweight and efficient,
 perfect for data-intensive real-time applications that run across distributed devices.


More information
================
 - Homepage: https://nodejs.org
]==])

whatis([==[Description: Node.js is a platform built on Chrome's JavaScript runtime
 for easily building fast, scalable network applications. Node.js uses an
 event-driven, non-blocking I/O model that makes it lightweight and efficient,
 perfect for data-intensive real-time applications that run across distributed devices.]==])
whatis([==[Homepage: https://nodejs.org]==])
whatis([==[URL: https://nodejs.org]==])

local root = "/app/software/nodejs/18.17.1-GCCcore-12.3.0"

conflict("nodejs")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("ICU/73.2-GCCcore-12.3.0") ) then
    load("ICU/73.2-GCCcore-12.3.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNODEJS", root)
setenv("EBVERSIONNODEJS", "18.17.1")
setenv("EBDEVELNODEJS", pathJoin(root, "logs/nodejs-18.17.1-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
