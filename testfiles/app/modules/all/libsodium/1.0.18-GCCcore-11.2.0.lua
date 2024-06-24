help([==[

Description
===========
Sodium is a modern, easy-to-use software library for encryption, decryption,
 signatures, password hashing and more.


More information
================
 - Homepage: https://doc.libsodium.org/
]==])

whatis([==[Description: 
 Sodium is a modern, easy-to-use software library for encryption, decryption,
 signatures, password hashing and more.
]==])
whatis([==[Homepage: https://doc.libsodium.org/]==])
whatis([==[URL: https://doc.libsodium.org/]==])

local root = "/app/software/libsodium/1.0.18-GCCcore-11.2.0"

conflict("libsodium")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBSODIUM", root)
setenv("EBVERSIONLIBSODIUM", "1.0.18")
setenv("EBDEVELLIBSODIUM", pathJoin(root, "logs/libsodium-1.0.18-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
