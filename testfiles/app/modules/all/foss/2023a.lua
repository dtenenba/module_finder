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

local root = "/app/software/foss/2023a"

conflict("foss")

if not ( isloaded("GCC/12.3.0") ) then
    load("GCC/12.3.0")
end

if not ( isloaded("OpenMPI/4.1.5-GCC-12.3.0") ) then
    load("OpenMPI/4.1.5-GCC-12.3.0")
end

if not ( isloaded("FlexiBLAS/3.3.1-GCC-12.3.0") ) then
    load("FlexiBLAS/3.3.1-GCC-12.3.0")
end

if not ( isloaded("FFTW/3.3.10-GCC-12.3.0") ) then
    load("FFTW/3.3.10-GCC-12.3.0")
end

if not ( isloaded("FFTW.MPI/3.3.10-gompi-2023a") ) then
    load("FFTW.MPI/3.3.10-gompi-2023a")
end

if not ( isloaded("ScaLAPACK/2.2.0-gompi-2023a-fb") ) then
    load("ScaLAPACK/2.2.0-gompi-2023a-fb")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2023a")
setenv("EBDEVELFOSS", pathJoin(root, "logs/foss-2023a-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
