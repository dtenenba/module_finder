help([==[

Description
===========
Program for analysing NGS data.


More information
================
 - Homepage: http://www.popgen.dk/angsd
]==])

whatis([==[Description: Program for analysing NGS data.]==])
whatis([==[Homepage: http://www.popgen.dk/angsd]==])
whatis([==[URL: http://www.popgen.dk/angsd]==])

local root = "/app/software/angsd/0.933-GCC-8.3.0"

conflict("angsd")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTANGSD", root)
setenv("EBVERSIONANGSD", "0.933")
setenv("EBDEVELANGSD", pathJoin(root, "logs/angsd-0.933-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
