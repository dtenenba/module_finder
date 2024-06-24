help([==[

Description
===========
FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
in one or more dimensions, of arbitrary input size, and of both real and complex data.


More information
================
 - Homepage: https://www.fftw.org
]==])

whatis([==[Description: FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
in one or more dimensions, of arbitrary input size, and of both real and complex data.]==])
whatis([==[Homepage: https://www.fftw.org]==])
whatis([==[URL: https://www.fftw.org]==])

local root = "/app/software/FFTW.MPI/3.3.10-gompi-2023a"

conflict("FFTW.MPI")

if not ( isloaded("gompi/2023a") ) then
    load("gompi/2023a")
end

if not ( isloaded("FFTW/3.3.10-GCC-12.3.0") ) then
    load("FFTW/3.3.10-GCC-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFFTWMPI", root)
setenv("EBVERSIONFFTWMPI", "3.3.10")
setenv("EBDEVELFFTWMPI", pathJoin(root, "logs/FFTW.MPI-3.3.10-gompi-2023a-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
