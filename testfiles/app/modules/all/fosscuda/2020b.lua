help([==[

Description
===========
GCC based compiler toolchain __with CUDA support__, and including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GCC based compiler toolchain __with CUDA support__, and including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/app/software/fosscuda/2020b"

conflict("fosscuda")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("CUDA/11.1.1-GCC-10.2.0") ) then
    load("CUDA/11.1.1-GCC-10.2.0")
end

if not ( isloaded("OpenMPI/4.0.5-gcccuda-2020b") ) then
    load("OpenMPI/4.0.5-gcccuda-2020b")
end

if not ( isloaded("OpenBLAS/0.3.12-GCC-10.2.0") ) then
    load("OpenBLAS/0.3.12-GCC-10.2.0")
end

if not ( isloaded("FFTW/3.3.8-gompic-2020b") ) then
    load("FFTW/3.3.8-gompic-2020b")
end

if not ( isloaded("ScaLAPACK/2.1.0-gompic-2020b") ) then
    load("ScaLAPACK/2.1.0-gompic-2020b")
end

setenv("EBROOTFOSSCUDA", root)
setenv("EBVERSIONFOSSCUDA", "2020b")
setenv("EBDEVELFOSSCUDA", pathJoin(root, "logs/fosscuda-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
