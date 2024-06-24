help([==[

Description
===========
SvABA - Structural variation and indel analysis by assembly


More information
================
 - Homepage: https://github.com/walaj/svaba
]==])

whatis([==[Description: SvABA - Structural variation and indel analysis by assembly]==])
whatis([==[Homepage: https://github.com/walaj/svaba]==])
whatis([==[URL: https://github.com/walaj/svaba]==])

local root = "/app/software/svaba/4d7b571-GCC-10.2.0"

conflict("svaba")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSVABA", root)
setenv("EBVERSIONSVABA", "4d7b571")
setenv("EBDEVELSVABA", pathJoin(root, "logs/svaba-4d7b571-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
