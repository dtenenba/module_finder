help([==[

Description
===========
Simple, modern and high performance file watching and code reload in python.


More information
================
 - Homepage: https://github.com/oconnor663/blake3-py


Included extensions
===================
anyio-3.0.0, idna-3.3, sniffio-1.3.0, watchfiles-0.21.0
]==])

whatis([==[Description: Simple, modern and high performance file watching and code reload in python.]==])
whatis([==[Homepage: https://github.com/oconnor663/blake3-py]==])
whatis([==[URL: https://github.com/oconnor663/blake3-py]==])
whatis([==[Extensions: anyio-3.0.0, idna-3.3, sniffio-1.3.0, watchfiles-0.21.0]==])

local root = "/app/software/watchfiles/0.21.0-GCCcore-12.3.0"

conflict("watchfiles")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWATCHFILES", root)
setenv("EBVERSIONWATCHFILES", "0.21.0")
setenv("EBDEVELWATCHFILES", pathJoin(root, "logs/watchfiles-0.21.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTWATCHFILES", "anyio-3.0.0,idna-3.3,sniffio-1.3.0,watchfiles-0.21.0")
