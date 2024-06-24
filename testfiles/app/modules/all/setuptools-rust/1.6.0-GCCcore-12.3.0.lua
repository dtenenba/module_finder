help([==[

Description
===========
setuptools-rust is a plugin for setuptools to build Rust Python extensions
implemented with PyO3 or rust-cpython.


More information
================
 - Homepage: https://github.com/PyO3/setuptools-rust


Included extensions
===================
semantic_version-2.10.0, setuptools-rust-1.6.0, typing_extensions-4.6.3
]==])

whatis([==[Description: setuptools-rust is a plugin for setuptools to build Rust Python extensions
implemented with PyO3 or rust-cpython.]==])
whatis([==[Homepage: https://github.com/PyO3/setuptools-rust]==])
whatis([==[URL: https://github.com/PyO3/setuptools-rust]==])
whatis([==[Extensions: semantic_version-2.10.0, setuptools-rust-1.6.0, typing_extensions-4.6.3]==])

local root = "/app/software/setuptools-rust/1.6.0-GCCcore-12.3.0"

conflict("setuptools-rust")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSETUPTOOLSMINRUST", root)
setenv("EBVERSIONSETUPTOOLSMINRUST", "1.6.0")
setenv("EBDEVELSETUPTOOLSMINRUST", pathJoin(root, "logs/setuptools-rust-1.6.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTSETUPTOOLSMINRUST", "typing_extensions-4.6.3,semantic_version-2.10.0,setuptools-rust-1.6.0")
