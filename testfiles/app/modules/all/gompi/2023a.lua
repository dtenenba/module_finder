help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/app/software/gompi/2023a"

conflict("gompi")

if not ( isloaded("GCC/12.3.0") ) then
    load("GCC/12.3.0")
end

if not ( isloaded("OpenMPI/4.1.5-GCC-12.3.0") ) then
    load("OpenMPI/4.1.5-GCC-12.3.0")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2023a")
setenv("EBDEVELGOMPI", pathJoin(root, "logs/gompi-2023a-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
