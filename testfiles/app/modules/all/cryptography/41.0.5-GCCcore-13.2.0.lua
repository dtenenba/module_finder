help([==[

Description
===========
cryptography is a package designed to expose cryptographic primitives and recipes to Python developers.


More information
================
 - Homepage: https://github.com/pyca/cryptography
]==])

whatis([==[Description: cryptography is a package designed to expose cryptographic primitives and recipes to Python developers.]==])
whatis([==[Homepage: https://github.com/pyca/cryptography]==])
whatis([==[URL: https://github.com/pyca/cryptography]==])

local root = "/app/software/cryptography/41.0.5-GCCcore-13.2.0"

conflict("cryptography")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("cffi/1.15.1-GCCcore-13.2.0") ) then
    load("cffi/1.15.1-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCRYPTOGRAPHY", root)
setenv("EBVERSIONCRYPTOGRAPHY", "41.0.5")
setenv("EBDEVELCRYPTOGRAPHY", pathJoin(root, "logs/cryptography-41.0.5-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
