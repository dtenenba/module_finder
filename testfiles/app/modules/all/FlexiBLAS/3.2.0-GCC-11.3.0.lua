help([==[

Description
===========
FlexiBLAS is a wrapper library that enables the exchange of the BLAS and LAPACK implementation
used by a program without recompiling or relinking it.


More information
================
 - Homepage: https://gitlab.mpi-magdeburg.mpg.de/software/flexiblas-release
]==])

whatis([==[Description: FlexiBLAS is a wrapper library that enables the exchange of the BLAS and LAPACK implementation
used by a program without recompiling or relinking it.]==])
whatis([==[Homepage: https://gitlab.mpi-magdeburg.mpg.de/software/flexiblas-release]==])
whatis([==[URL: https://gitlab.mpi-magdeburg.mpg.de/software/flexiblas-release]==])

local root = "/app/software/FlexiBLAS/3.2.0-GCC-11.3.0"

conflict("FlexiBLAS")

if not ( isloaded("GCC/11.3.0") ) then
    load("GCC/11.3.0")
end

if not ( isloaded("OpenBLAS/0.3.20-GCC-11.3.0") ) then
    load("OpenBLAS/0.3.20-GCC-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFLEXIBLAS", root)
setenv("EBVERSIONFLEXIBLAS", "3.2.0")
setenv("EBDEVELFLEXIBLAS", pathJoin(root, "logs/FlexiBLAS-3.2.0-GCC-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
