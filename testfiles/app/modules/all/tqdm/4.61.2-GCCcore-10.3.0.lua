help([==[

Description
===========
A fast, extensible progress bar for Python and CLI


More information
================
 - Homepage: https://github.com/tqdm/tqdm
]==])

whatis([==[Description: A fast, extensible progress bar for Python and CLI]==])
whatis([==[Homepage: https://github.com/tqdm/tqdm]==])
whatis([==[URL: https://github.com/tqdm/tqdm]==])

local root = "/app/software/tqdm/4.61.2-GCCcore-10.3.0"

conflict("tqdm")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTQDM", root)
setenv("EBVERSIONTQDM", "4.61.2")
setenv("EBDEVELTQDM", pathJoin(root, "logs/tqdm-4.61.2-GCCcore-10.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
