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

local root = "/app/software/Autotools/20210726-GCCcore-11.2.0"

conflict("Autotools")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Autoconf/2.71-GCCcore-11.2.0") ) then
    load("Autoconf/2.71-GCCcore-11.2.0")
end

if not ( isloaded("Automake/1.16.4-GCCcore-11.2.0") ) then
    load("Automake/1.16.4-GCCcore-11.2.0")
end

if not ( isloaded("libtool/2.4.6-GCCcore-11.2.0") ) then
    load("libtool/2.4.6-GCCcore-11.2.0")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20210726")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "logs/Autotools-20210726-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
