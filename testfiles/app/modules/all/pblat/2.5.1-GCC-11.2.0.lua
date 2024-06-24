help([==[

Description
===========
Parallel blat based on Jim Kent's blat


More information
================
 - Homepage: http://icebert.github.io/pblat/
]==])

whatis([==[Description: Parallel blat based on Jim Kent's blat]==])
whatis([==[Homepage: http://icebert.github.io/pblat/]==])
whatis([==[URL: http://icebert.github.io/pblat/]==])

local root = "/app/software/pblat/2.5.1-GCC-11.2.0"

conflict("pblat")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPBLAT", root)
setenv("EBVERSIONPBLAT", "2.5.1")
setenv("EBDEVELPBLAT", pathJoin(root, "logs/pblat-2.5.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
