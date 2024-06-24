help([==[

Description
===========
Parse structured PT2 (PyTorch 2) logs


More information
================
 - Homepage: https://github.com/ezyang/tlparse
]==])

whatis([==[Description: Parse structured PT2 (PyTorch 2) logs]==])
whatis([==[Homepage: https://github.com/ezyang/tlparse]==])
whatis([==[URL: https://github.com/ezyang/tlparse]==])

local root = "/app/software/tlparse/0.3.5-GCCcore-13.2.0"

conflict("tlparse")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTLPARSE", root)
setenv("EBVERSIONTLPARSE", "0.3.5")
setenv("EBDEVELTLPARSE", pathJoin(root, "logs/tlparse-0.3.5-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
