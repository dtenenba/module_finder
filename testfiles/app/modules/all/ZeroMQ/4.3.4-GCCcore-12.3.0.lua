help([==[

Description
===========
ZeroMQ looks like an embeddable networking library but acts like a concurrency framework.
 It gives you sockets that carry atomic messages across various transports like in-process,
 inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fanout,
 pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered
 products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous
 message-processing tasks. It has a score of language APIs and runs on most operating systems.


More information
================
 - Homepage: https://www.zeromq.org/
]==])

whatis([==[Description: ZeroMQ looks like an embeddable networking library but acts like a concurrency framework.
 It gives you sockets that carry atomic messages across various transports like in-process,
 inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fanout,
 pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered
 products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous
 message-processing tasks. It has a score of language APIs and runs on most operating systems.]==])
whatis([==[Homepage: https://www.zeromq.org/]==])
whatis([==[URL: https://www.zeromq.org/]==])

local root = "/app/software/ZeroMQ/4.3.4-GCCcore-12.3.0"

conflict("ZeroMQ")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("OpenPGM/5.2.122-GCCcore-12.3.0") ) then
    load("OpenPGM/5.2.122-GCCcore-12.3.0")
end

if not ( isloaded("libsodium/1.0.18-GCCcore-12.3.0") ) then
    load("libsodium/1.0.18-GCCcore-12.3.0")
end

if not ( isloaded("util-linux/2.39-GCCcore-12.3.0") ) then
    load("util-linux/2.39-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTZEROMQ", root)
setenv("EBVERSIONZEROMQ", "4.3.4")
setenv("EBDEVELZEROMQ", pathJoin(root, "logs/ZeroMQ-4.3.4-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
