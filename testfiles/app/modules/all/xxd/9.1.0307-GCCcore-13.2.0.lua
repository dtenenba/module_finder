help([==[

Description
===========
xxd is part of the VIM package and this will only install xxd, not vim!
xxd converts to/from hexdumps of binary files.


More information
================
 - Homepage: https://www.vim.org
]==])

whatis([==[Description: xxd is part of the VIM package and this will only install xxd, not vim!
xxd converts to/from hexdumps of binary files.]==])
whatis([==[Homepage: https://www.vim.org]==])
whatis([==[URL: https://www.vim.org]==])

local root = "/app/software/xxd/9.1.0307-GCCcore-13.2.0"

conflict("xxd")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTXXD", root)
setenv("EBVERSIONXXD", "9.1.0307")
setenv("EBDEVELXXD", pathJoin(root, "logs/xxd-9.1.0307-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
