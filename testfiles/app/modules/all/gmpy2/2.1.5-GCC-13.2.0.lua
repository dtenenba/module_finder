help([==[

Description
===========
GMP/MPIR, MPFR, and MPC interface to Python 2.6+ and 3.x


More information
================
 - Homepage: https://github.com/aleaxit/gmpy
]==])

whatis([==[Description: GMP/MPIR, MPFR, and MPC interface to Python 2.6+ and 3.x]==])
whatis([==[Homepage: https://github.com/aleaxit/gmpy]==])
whatis([==[URL: https://github.com/aleaxit/gmpy]==])

local root = "/app/software/gmpy2/2.1.5-GCC-13.2.0"

conflict("gmpy2")

if not ( isloaded("GCC/13.2.0") ) then
    load("GCC/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("GMP/6.3.0-GCCcore-13.2.0") ) then
    load("GMP/6.3.0-GCCcore-13.2.0")
end

if not ( isloaded("MPFR/4.2.1-GCCcore-13.2.0") ) then
    load("MPFR/4.2.1-GCCcore-13.2.0")
end

if not ( isloaded("MPC/1.3.1-GCCcore-13.2.0") ) then
    load("MPC/1.3.1-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGMPY2", root)
setenv("EBVERSIONGMPY2", "2.1.5")
setenv("EBDEVELGMPY2", pathJoin(root, "logs/gmpy2-2.1.5-GCC-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
