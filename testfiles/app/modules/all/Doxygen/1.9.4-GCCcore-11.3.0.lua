help([==[

Description
===========
Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.


More information
================
 - Homepage: https://www.doxygen.org
]==])

whatis([==[Description: 
 Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.
]==])
whatis([==[Homepage: https://www.doxygen.org]==])
whatis([==[URL: https://www.doxygen.org]==])

local root = "/app/software/Doxygen/1.9.4-GCCcore-11.3.0"

conflict("Doxygen")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("libiconv/1.17-GCCcore-11.3.0") ) then
    load("libiconv/1.17-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDOXYGEN", root)
setenv("EBVERSIONDOXYGEN", "1.9.4")
setenv("EBDEVELDOXYGEN", pathJoin(root, "logs/Doxygen-1.9.4-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
