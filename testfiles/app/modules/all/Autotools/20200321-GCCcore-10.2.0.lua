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

local root = "/app/software/Autotools/20200321-GCCcore-10.2.0"

conflict("Autotools")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Autoconf/2.69-GCCcore-10.2.0") ) then
    load("Autoconf/2.69-GCCcore-10.2.0")
end

if not ( isloaded("Automake/1.16.2-GCCcore-10.2.0") ) then
    load("Automake/1.16.2-GCCcore-10.2.0")
end

if not ( isloaded("libtool/2.4.6-GCCcore-10.2.0") ) then
    load("libtool/2.4.6-GCCcore-10.2.0")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20200321")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "logs/Autotools-20200321-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
