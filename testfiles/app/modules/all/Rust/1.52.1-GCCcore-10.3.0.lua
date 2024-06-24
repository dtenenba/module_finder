help([==[

Description
===========
Rust is a systems programming language that runs blazingly fast, prevents segfaults,
 and guarantees thread safety.


More information
================
 - Homepage: https://www.rust-lang.org
]==])

whatis([==[Description: Rust is a systems programming language that runs blazingly fast, prevents segfaults,
 and guarantees thread safety.]==])
whatis([==[Homepage: https://www.rust-lang.org]==])
whatis([==[URL: https://www.rust-lang.org]==])

local root = "/app/software/Rust/1.52.1-GCCcore-10.3.0"

conflict("Rust")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTRUST", root)
setenv("EBVERSIONRUST", "1.52.1")
setenv("EBDEVELRUST", pathJoin(root, "logs/Rust-1.52.1-GCCcore-10.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
