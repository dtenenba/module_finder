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

local root = "/app/software/foss/2022b"

conflict("foss")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("OpenMPI/4.1.4-GCC-12.2.0") ) then
    load("OpenMPI/4.1.4-GCC-12.2.0")
end

if not ( isloaded("FlexiBLAS/3.2.1-GCC-12.2.0") ) then
    load("FlexiBLAS/3.2.1-GCC-12.2.0")
end

if not ( isloaded("FFTW/3.3.10-GCC-12.2.0") ) then
    load("FFTW/3.3.10-GCC-12.2.0")
end

if not ( isloaded("FFTW.MPI/3.3.10-gompi-2022b") ) then
    load("FFTW.MPI/3.3.10-gompi-2022b")
end

if not ( isloaded("ScaLAPACK/2.2.0-gompi-2022b-fb") ) then
    load("ScaLAPACK/2.2.0-gompi-2022b-fb")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2022b")
setenv("EBDEVELFOSS", pathJoin(root, "logs/foss-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.7.0
