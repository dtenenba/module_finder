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

local root = "/app/software/gmpy2/2.1.2-GCC-11.3.0"

conflict("gmpy2")

if not ( isloaded("GCC/11.3.0") ) then
    load("GCC/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.3.0") ) then
    load("GMP/6.2.1-GCCcore-11.3.0")
end

if not ( isloaded("MPFR/4.1.0-GCCcore-11.3.0") ) then
    load("MPFR/4.1.0-GCCcore-11.3.0")
end

if not ( isloaded("MPC/1.2.1-GCCcore-11.3.0") ) then
    load("MPC/1.2.1-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGMPY2", root)
setenv("EBVERSIONGMPY2", "2.1.2")
setenv("EBDEVELGMPY2", pathJoin(root, "logs/gmpy2-2.1.2-GCC-11.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
