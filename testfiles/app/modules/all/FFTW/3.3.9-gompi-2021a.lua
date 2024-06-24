help([==[

Description
===========
FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data.


More information
================
 - Homepage: http://www.fftw.org
]==])

whatis([==[Description: FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data.]==])
whatis([==[Homepage: http://www.fftw.org]==])
whatis([==[URL: http://www.fftw.org]==])

local root = "/app/software/FFTW/3.3.9-gompi-2021a"

conflict("FFTW")

if not ( isloaded("gompi/2021a") ) then
    load("gompi/2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFFTW", root)
setenv("EBVERSIONFFTW", "3.3.9")
setenv("EBDEVELFFTW", pathJoin(root, "logs/FFTW-3.3.9-gompi-2021a-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
