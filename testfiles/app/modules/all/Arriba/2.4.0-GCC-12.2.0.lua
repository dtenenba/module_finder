help([==[

Description
===========
Arriba is a command-line tool for the detection of gene fusions from RNA-Seq data.
 It was developed for the use in a clinical research setting. Therefore, short runtimes and high
 sensitivity were important design criteria.


More information
================
 - Homepage: https://github.com/suhrig/arriba
]==])

whatis([==[Description: Arriba is a command-line tool for the detection of gene fusions from RNA-Seq data.
 It was developed for the use in a clinical research setting. Therefore, short runtimes and high
 sensitivity were important design criteria.]==])
whatis([==[Homepage: https://github.com/suhrig/arriba]==])
whatis([==[URL: https://github.com/suhrig/arriba]==])

local root = "/app/software/Arriba/2.4.0-GCC-12.2.0"

conflict("Arriba")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.2.0") ) then
    load("bzip2/1.0.8-GCCcore-12.2.0")
end

if not ( isloaded("HTSlib/1.17-GCC-12.2.0") ) then
    load("HTSlib/1.17-GCC-12.2.0")
end

if not ( isloaded("libdeflate/1.15-GCCcore-12.2.0") ) then
    load("libdeflate/1.15-GCCcore-12.2.0")
end

if not ( isloaded("STAR/2.7.10b-GCC-12.2.0") ) then
    load("STAR/2.7.10b-GCC-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("XZ/5.2.7-GCCcore-12.2.0") ) then
    load("XZ/5.2.7-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTARRIBA", root)
setenv("EBVERSIONARRIBA", "2.4.0")
setenv("EBDEVELARRIBA", pathJoin(root, "logs/Arriba-2.4.0-GCC-12.2.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.1
