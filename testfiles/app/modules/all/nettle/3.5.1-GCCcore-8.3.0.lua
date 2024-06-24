help([==[

Description
===========
Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.


More information
================
 - Homepage: http://www.lysator.liu.se/~nisse/nettle/
]==])

whatis([==[Description: Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.]==])
whatis([==[Homepage: http://www.lysator.liu.se/~nisse/nettle/]==])
whatis([==[URL: http://www.lysator.liu.se/~nisse/nettle/]==])

local root = "/app/software/nettle/3.5.1-GCCcore-8.3.0"

conflict("nettle")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("GMP/6.1.2-GCCcore-8.3.0") ) then
    load("GMP/6.1.2-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNETTLE", root)
setenv("EBVERSIONNETTLE", "3.5.1")
setenv("EBDEVELNETTLE", pathJoin(root, "logs/nettle-3.5.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
