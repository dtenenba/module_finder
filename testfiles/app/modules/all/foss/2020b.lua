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

local root = "/app/software/foss/2020b"

conflict("foss")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("OpenMPI/4.0.5-GCC-10.2.0") ) then
    load("OpenMPI/4.0.5-GCC-10.2.0")
end

if not ( isloaded("OpenBLAS/0.3.12-GCC-10.2.0") ) then
    load("OpenBLAS/0.3.12-GCC-10.2.0")
end

if not ( isloaded("FFTW/3.3.8-gompi-2020b") ) then
    load("FFTW/3.3.8-gompi-2020b")
end

if not ( isloaded("ScaLAPACK/2.1.0-gompi-2020b") ) then
    load("ScaLAPACK/2.1.0-gompi-2020b")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2020b")
setenv("EBDEVELFOSS", pathJoin(root, "logs/foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
