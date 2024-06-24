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

local root = "/app/software/arpack-ng/3.8.0-foss-2022b"

conflict("arpack-ng")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTARPACKMINNG", root)
setenv("EBVERSIONARPACKMINNG", "3.8.0")
setenv("EBDEVELARPACKMINNG", pathJoin(root, "logs/arpack-ng-3.8.0-foss-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
