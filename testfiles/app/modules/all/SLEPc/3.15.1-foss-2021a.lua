help([==[

Description
===========
SLEPc (Scalable Library for Eigenvalue Problem Computations) is a software library for the solution
 of large scale sparse eigenvalue problems on parallel computers. It is an extension of PETSc and can be used for
 either standard or generalized eigenproblems, with real or complex arithmetic. It can also be used for computing a
 partial SVD of a large, sparse, rectangular matrix, and to solve quadratic eigenvalue problems.


More information
================
 - Homepage: https://www.grycap.upv.es/slepc/
]==])

whatis([==[Description: SLEPc (Scalable Library for Eigenvalue Problem Computations) is a software library for the solution
 of large scale sparse eigenvalue problems on parallel computers. It is an extension of PETSc and can be used for
 either standard or generalized eigenproblems, with real or complex arithmetic. It can also be used for computing a
 partial SVD of a large, sparse, rectangular matrix, and to solve quadratic eigenvalue problems.]==])
whatis([==[Homepage: https://www.grycap.upv.es/slepc/]==])
whatis([==[URL: https://www.grycap.upv.es/slepc/]==])

local root = "/app/software/SLEPc/3.15.1-foss-2021a"

conflict("SLEPc")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("PETSc/3.15.1-foss-2021a") ) then
    load("PETSc/3.15.1-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSLEPC", root)
setenv("EBVERSIONSLEPC", "3.15.1")
setenv("EBDEVELSLEPC", pathJoin(root, "logs/SLEPc-3.15.1-foss-2021a-easybuild-devel"))

setenv("SLEPC_DIR", "/app/software/SLEPc/3.15.1-foss-2021a")
-- Built with EasyBuild version 4.6.2
