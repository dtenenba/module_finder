help([==[

Description
===========
beagle-lib is a high-performance library that can perform the core calculations at the heart of most
 Bayesian and Maximum Likelihood phylogenetics packages.


More information
================
 - Homepage: https://github.com/beagle-dev/beagle-lib
]==])

whatis([==[Description: beagle-lib is a high-performance library that can perform the core calculations at the heart of most
 Bayesian and Maximum Likelihood phylogenetics packages.]==])
whatis([==[Homepage: https://github.com/beagle-dev/beagle-lib]==])
whatis([==[URL: https://github.com/beagle-dev/beagle-lib]==])

local root = "/app/software/beagle-lib/3.1.2-GCC-9.3.0"

conflict("beagle-lib")

if not ( isloaded("GCC/9.3.0") ) then
    load("GCC/9.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBEAGLEMINLIB", root)
setenv("EBVERSIONBEAGLEMINLIB", "3.1.2")
setenv("EBDEVELBEAGLEMINLIB", pathJoin(root, "logs/beagle-lib-3.1.2-GCC-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
