help([==[

Description
===========
Python bindings for BLAKE3.  A cryptographic hash function that is Much faster than MD5, SHA-1, SHA-2,
 SHA-3, and BLAKE2.


More information
================
 - Homepage: https://github.com/oconnor663/blake3-py


Included extensions
===================
blake3-0.4.1
]==])

whatis([==[Description: Python bindings for BLAKE3.  A cryptographic hash function that is Much faster than MD5, SHA-1, SHA-2,
 SHA-3, and BLAKE2.]==])
whatis([==[Homepage: https://github.com/oconnor663/blake3-py]==])
whatis([==[URL: https://github.com/oconnor663/blake3-py]==])
whatis([==[Extensions: blake3-0.4.1]==])

local root = "/app/software/blake3/0.4.1-GCCcore-12.3.0"

conflict("blake3")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBLAKE3", root)
setenv("EBVERSIONBLAKE3", "0.4.1")
setenv("EBDEVELBLAKE3", pathJoin(root, "logs/blake3-0.4.1-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTBLAKE3", "blake3-0.4.1")
