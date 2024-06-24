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

local root = "/app/software/foss/2021b"

conflict("foss")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("OpenMPI/4.1.1-GCC-11.2.0") ) then
    load("OpenMPI/4.1.1-GCC-11.2.0")
end

if not ( isloaded("FlexiBLAS/3.0.4-GCC-11.2.0") ) then
    load("FlexiBLAS/3.0.4-GCC-11.2.0")
end

if not ( isloaded("FFTW/3.3.10-gompi-2021b") ) then
    load("FFTW/3.3.10-gompi-2021b")
end

if not ( isloaded("ScaLAPACK/2.1.0-gompi-2021b-fb") ) then
    load("ScaLAPACK/2.1.0-gompi-2021b-fb")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2021b")
setenv("EBDEVELFOSS", pathJoin(root, "logs/foss-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
