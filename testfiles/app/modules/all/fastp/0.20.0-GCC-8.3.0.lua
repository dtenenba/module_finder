help([==[

Description
===========
A tool designed to provide fast all-in-one preprocessing for FastQ files.
 This tool is developed in C++ with multithreading supported to afford high performance.


More information
================
 - Homepage: https://github.com/OpenGene/fastp
]==])

whatis([==[Description: A tool designed to provide fast all-in-one preprocessing for FastQ files.
 This tool is developed in C++ with multithreading supported to afford high performance.]==])
whatis([==[Homepage: https://github.com/OpenGene/fastp]==])
whatis([==[URL: https://github.com/OpenGene/fastp]==])

local root = "/app/software/fastp/0.20.0-GCC-8.3.0"

conflict("fastp")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFASTP", root)
setenv("EBVERSIONFASTP", "0.20.0")
setenv("EBDEVELFASTP", pathJoin(root, "logs/fastp-0.20.0-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
