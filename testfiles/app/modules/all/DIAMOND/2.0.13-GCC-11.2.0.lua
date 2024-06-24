help([==[

Description
===========
Accelerated BLAST compatible local sequence aligner


More information
================
 - Homepage: https://github.com/bbuchfink/diamond
]==])

whatis([==[Description: Accelerated BLAST compatible local sequence aligner]==])
whatis([==[Homepage: https://github.com/bbuchfink/diamond]==])
whatis([==[URL: https://github.com/bbuchfink/diamond]==])

local root = "/app/software/DIAMOND/2.0.13-GCC-11.2.0"

conflict("DIAMOND")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDIAMOND", root)
setenv("EBVERSIONDIAMOND", "2.0.13")
setenv("EBDEVELDIAMOND", pathJoin(root, "logs/DIAMOND-2.0.13-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
