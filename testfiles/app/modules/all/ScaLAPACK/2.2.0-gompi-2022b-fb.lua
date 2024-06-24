help([==[

Description
===========
The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.


More information
================
 - Homepage: https://www.netlib.org/scalapack/
]==])

whatis([==[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.]==])
whatis([==[Homepage: https://www.netlib.org/scalapack/]==])
whatis([==[URL: https://www.netlib.org/scalapack/]==])

local root = "/app/software/ScaLAPACK/2.2.0-gompi-2022b-fb"

conflict("ScaLAPACK")

if not ( isloaded("gompi/2022b") ) then
    load("gompi/2022b")
end

if not ( isloaded("FlexiBLAS/3.2.1-GCC-12.2.0") ) then
    load("FlexiBLAS/3.2.1-GCC-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.2.0")
setenv("EBDEVELSCALAPACK", pathJoin(root, "logs/ScaLAPACK-2.2.0-gompi-2022b-fb-easybuild-devel"))

-- Built with EasyBuild version 4.7.0
