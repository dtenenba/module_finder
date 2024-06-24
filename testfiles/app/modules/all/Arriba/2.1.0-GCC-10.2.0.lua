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

local root = "/app/software/Arriba/2.1.0-GCC-10.2.0"

conflict("Arriba")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

if not ( isloaded("STAR/2.7.7a-GCC-10.2.0") ) then
    load("STAR/2.7.7a-GCC-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTARRIBA", root)
setenv("EBVERSIONARRIBA", "2.1.0")
setenv("EBDEVELARRIBA", pathJoin(root, "logs/Arriba-2.1.0-GCC-10.2.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.3
