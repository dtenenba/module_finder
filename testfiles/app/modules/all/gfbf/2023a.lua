help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, including
 FlexiBLAS (BLAS and LAPACK support) and (serial) FFTW.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 FlexiBLAS (BLAS and LAPACK support) and (serial) FFTW.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/app/software/gfbf/2023a"

conflict("gfbf")

if not ( isloaded("GCC/12.3.0") ) then
    load("GCC/12.3.0")
end

if not ( isloaded("FlexiBLAS/3.3.1-GCC-12.3.0") ) then
    load("FlexiBLAS/3.3.1-GCC-12.3.0")
end

if not ( isloaded("FFTW/3.3.10-GCC-12.3.0") ) then
    load("FFTW/3.3.10-GCC-12.3.0")
end

setenv("EBROOTGFBF", root)
setenv("EBVERSIONGFBF", "2023a")
setenv("EBDEVELGFBF", pathJoin(root, "logs/gfbf-2023a-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
