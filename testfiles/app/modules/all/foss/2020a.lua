help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain]==])
whatis([==[URL: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain]==])

local root = "/app/software/foss/2020a"

conflict("foss")

if not ( isloaded("GCC/9.3.0") ) then
    load("GCC/9.3.0")
end

if not ( isloaded("OpenMPI/4.0.3-GCC-9.3.0") ) then
    load("OpenMPI/4.0.3-GCC-9.3.0")
end

if not ( isloaded("OpenBLAS/0.3.9-GCC-9.3.0") ) then
    load("OpenBLAS/0.3.9-GCC-9.3.0")
end

if not ( isloaded("FFTW/3.3.8-gompi-2020a") ) then
    load("FFTW/3.3.8-gompi-2020a")
end

if not ( isloaded("ScaLAPACK/2.1.0-gompi-2020a") ) then
    load("ScaLAPACK/2.1.0-gompi-2020a")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2020a")
setenv("EBDEVELFOSS", pathJoin(root, "logs/foss-2020a-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
