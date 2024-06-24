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

local root = "/app/software/fastp/0.23.4-GCC-13.2.0"

conflict("fastp")

if not ( isloaded("GCC/13.2.0") ) then
    load("GCC/13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("libdeflate/1.19-GCCcore-13.2.0") ) then
    load("libdeflate/1.19-GCCcore-13.2.0")
end

if not ( isloaded("ISA-L/2.31.0-GCCcore-13.2.0") ) then
    load("ISA-L/2.31.0-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFASTP", root)
setenv("EBVERSIONFASTP", "0.23.4")
setenv("EBDEVELFASTP", pathJoin(root, "logs/fastp-0.23.4-GCC-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
