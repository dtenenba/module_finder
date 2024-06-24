help([==[

Description
===========
LAPACK is written in Fortran90 and provides routines for solving systems of
 simultaneous linear equations, least-squares solutions of linear systems of equations, eigenvalue
 problems, and singular value problems.


More information
================
 - Homepage: https://www.netlib.org/lapack/
]==])

whatis([==[Description: LAPACK is written in Fortran90 and provides routines for solving systems of
 simultaneous linear equations, least-squares solutions of linear systems of equations, eigenvalue
 problems, and singular value problems.]==])
whatis([==[Homepage: https://www.netlib.org/lapack/]==])
whatis([==[URL: https://www.netlib.org/lapack/]==])

local root = "/app/software/LAPACK/3.12.0-GCC-11.2.0"

conflict("LAPACK")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLAPACK", root)
setenv("EBVERSIONLAPACK", "3.12.0")
setenv("EBDEVELLAPACK", pathJoin(root, "logs/LAPACK-3.12.0-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
