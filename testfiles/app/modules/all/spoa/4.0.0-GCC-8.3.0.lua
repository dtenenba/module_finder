help([==[

Description
===========
Spoa (SIMD POA) is a c++ implementation of the partial order alignment (POA) algorithm
 which is used to generate consensus sequences


More information
================
 - Homepage: https://github.com/rvaser/spoa
]==])

whatis([==[Description: Spoa (SIMD POA) is a c++ implementation of the partial order alignment (POA) algorithm
 which is used to generate consensus sequences]==])
whatis([==[Homepage: https://github.com/rvaser/spoa]==])
whatis([==[URL: https://github.com/rvaser/spoa]==])

local root = "/app/software/spoa/4.0.0-GCC-8.3.0"

conflict("spoa")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSPOA", root)
setenv("EBVERSIONSPOA", "4.0.0")
setenv("EBDEVELSPOA", pathJoin(root, "logs/spoa-4.0.0-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
