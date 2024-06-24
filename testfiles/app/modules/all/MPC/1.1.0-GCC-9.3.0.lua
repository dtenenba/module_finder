help([==[

Description
===========
Gnu Mpc is a C library for the arithmetic of
 complex numbers with arbitrarily high precision and correct
 rounding of the result. It extends the principles of the IEEE-754
 standard for fixed precision real floating point numbers to
 complex numbers, providing well-defined semantics for every
 operation. At the same time, speed of operation at high precision
 is a major design goal.


More information
================
 - Homepage: http://www.multiprecision.org/
]==])

whatis([==[Description: Gnu Mpc is a C library for the arithmetic of
 complex numbers with arbitrarily high precision and correct
 rounding of the result. It extends the principles of the IEEE-754
 standard for fixed precision real floating point numbers to
 complex numbers, providing well-defined semantics for every
 operation. At the same time, speed of operation at high precision
 is a major design goal.]==])
whatis([==[Homepage: http://www.multiprecision.org/]==])
whatis([==[URL: http://www.multiprecision.org/]==])

local root = "/app/software/MPC/1.1.0-GCC-9.3.0"

conflict("MPC")

if not ( isloaded("GCC/9.3.0") ) then
    load("GCC/9.3.0")
end

if not ( isloaded("GMP/6.2.0-GCCcore-9.3.0") ) then
    load("GMP/6.2.0-GCCcore-9.3.0")
end

if not ( isloaded("MPFR/4.0.2-GCCcore-9.3.0") ) then
    load("MPFR/4.0.2-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMPC", root)
setenv("EBVERSIONMPC", "1.1.0")
setenv("EBDEVELMPC", pathJoin(root, "logs/MPC-1.1.0-GCC-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
