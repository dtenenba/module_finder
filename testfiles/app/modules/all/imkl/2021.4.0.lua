help([==[

Description
===========
Intel oneAPI Math Kernel Library


More information
================
 - Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html
]==])

whatis([==[Description: Intel oneAPI Math Kernel Library]==])
whatis([==[Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])
whatis([==[URL: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])

local root = "/app/software/imkl/2021.4.0"

conflict("imkl")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "mkl/2021.4.0/include"))
prepend_path("CPATH", pathJoin(root, "mkl/2021.4.0/include/fftw"))
prepend_path("FLEXIBLAS_LIBRARY_PATH", pathJoin(root, "mkl/2021.4.0/lib/intel64/flexiblas"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compiler/2021.4.0/linux/compiler/lib/intel64_lin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "mkl/2021.4.0/lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compiler/2021.4.0/linux/compiler/lib/intel64_lin"))
prepend_path("LIBRARY_PATH", pathJoin(root, "mkl/2021.4.0/lib/intel64"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "mkl/2021.4.0/lib/pkgconfig"))
setenv("EBROOTIMKL", root)
setenv("EBVERSIONIMKL", "2021.4.0")
setenv("EBDEVELIMKL", pathJoin(root, "logs/imkl-2021.4.0-easybuild-devel"))

setenv("MKL_EXAMPLES", "/app/software/imkl/2021.4.0/mkl/2021.4.0/examples")
setenv("MKLROOT", "/app/software/imkl/2021.4.0/mkl/2021.4.0")
-- Built with EasyBuild version 4.5.4
