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

local root = "/app/software/foss/2021a"

conflict("foss")

if not ( isloaded("GCC/10.3.0") ) then
    load("GCC/10.3.0")
end

if not ( isloaded("OpenMPI/4.1.1-GCC-10.3.0") ) then
    load("OpenMPI/4.1.1-GCC-10.3.0")
end

if not ( isloaded("FlexiBLAS/3.0.4-GCC-10.3.0") ) then
    load("FlexiBLAS/3.0.4-GCC-10.3.0")
end

if not ( isloaded("FFTW/3.3.9-gompi-2021a") ) then
    load("FFTW/3.3.9-gompi-2021a")
end

if not ( isloaded("ScaLAPACK/2.1.0-gompi-2021a-fb") ) then
    load("ScaLAPACK/2.1.0-gompi-2021a-fb")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2021a")
setenv("EBDEVELFOSS", pathJoin(root, "logs/foss-2021a-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
