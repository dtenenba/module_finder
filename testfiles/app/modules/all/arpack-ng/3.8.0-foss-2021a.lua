help([==[

Description
===========
ARPACK is a collection of Fortran77 subroutines designed to solve large scale eigenvalue problems.


More information
================
 - Homepage: https://github.com/opencollab/arpack-ng
]==])

whatis([==[Description: ARPACK is a collection of Fortran77 subroutines designed to solve large scale eigenvalue problems.]==])
whatis([==[Homepage: https://github.com/opencollab/arpack-ng]==])
whatis([==[URL: https://github.com/opencollab/arpack-ng]==])

local root = "/app/software/arpack-ng/3.8.0-foss-2021a"

conflict("arpack-ng")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Eigen/3.3.9-GCCcore-10.3.0") ) then
    load("Eigen/3.3.9-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTARPACKMINNG", root)
setenv("EBVERSIONARPACKMINNG", "3.8.0")
setenv("EBDEVELARPACKMINNG", pathJoin(root, "logs/arpack-ng-3.8.0-foss-2021a-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
