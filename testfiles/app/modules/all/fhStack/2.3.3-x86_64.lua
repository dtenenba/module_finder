help([==[

Description
===========
Stack is a cross-platform program for developing Haskell projects.
It is intended for Haskellers both new and experienced.


More information
================
 - Homepage: https://docs.haskellstack.org
]==])

whatis([==[Description: Stack is a cross-platform program for developing Haskell projects.
It is intended for Haskellers both new and experienced.]==])
whatis([==[Homepage: https://docs.haskellstack.org]==])
whatis([==[URL: https://docs.haskellstack.org]==])

local root = "/app/software/fhStack/2.3.3-x86_64"

conflict("fhStack")

if not ( isloaded("Stack/2.3.3-x86_64") ) then
    load("Stack/2.3.3-x86_64")
end

if not ( isloaded("OpenBLAS/0.3.18-GCC-11.2.0") ) then
    load("OpenBLAS/0.3.18-GCC-11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

if not ( isloaded("expat/2.4.1-GCCcore-11.2.0") ) then
    load("expat/2.4.1-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

setenv("EBROOTFHSTACK", root)
setenv("EBVERSIONFHSTACK", "2.3.3")
setenv("EBDEVELFHSTACK", pathJoin(root, "logs/fhStack-2.3.3-x86_64-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
