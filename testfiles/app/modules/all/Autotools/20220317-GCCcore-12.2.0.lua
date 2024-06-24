help([==[

Description
===========
This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool


More information
================
 - Homepage: https://autotools.io
]==])

whatis([==[Description: 
 This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool
]==])
whatis([==[Homepage: https://autotools.io]==])
whatis([==[URL: https://autotools.io]==])

local root = "/app/software/Autotools/20220317-GCCcore-12.2.0"

conflict("Autotools")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Autoconf/2.71-GCCcore-12.2.0") ) then
    load("Autoconf/2.71-GCCcore-12.2.0")
end

if not ( isloaded("Automake/1.16.5-GCCcore-12.2.0") ) then
    load("Automake/1.16.5-GCCcore-12.2.0")
end

if not ( isloaded("libtool/2.4.7-GCCcore-12.2.0") ) then
    load("libtool/2.4.7-GCCcore-12.2.0")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20220317")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "logs/Autotools-20220317-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.0
