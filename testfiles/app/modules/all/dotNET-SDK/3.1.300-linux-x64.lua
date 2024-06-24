help([==[

Description
===========
.NET is a free, cross-platform, open source developer platform for building many different types
 of applications.


More information
================
 - Homepage: https://www.microsoft.com/net/
]==])

whatis([==[Description: .NET is a free, cross-platform, open source developer platform for building many different types
 of applications.]==])
whatis([==[Homepage: https://www.microsoft.com/net/]==])
whatis([==[URL: https://www.microsoft.com/net/]==])

local root = "/app/software/dotNET-SDK/3.1.300-linux-x64"

conflict("dotNET-SDK")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTDOTNETMINSDK", root)
setenv("EBVERSIONDOTNETMINSDK", "3.1.300")
setenv("EBDEVELDOTNETMINSDK", pathJoin(root, "logs/dotNET-SDK-3.1.300-linux-x64-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("DOTNET_ROOT", root)
-- Built with EasyBuild version 4.8.1
