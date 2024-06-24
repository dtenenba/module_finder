help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, along with CUDA toolkit.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, along with CUDA toolkit.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/app/software/gcccuda/2019b"

conflict("gcccuda")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("CUDA/10.1.243-GCC-8.3.0") ) then
    load("CUDA/10.1.243-GCC-8.3.0")
end

setenv("EBROOTGCCCUDA", root)
setenv("EBVERSIONGCCCUDA", "2019b")
setenv("EBDEVELGCCCUDA", pathJoin(root, "logs/gcccuda-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
