help([==[

Description
===========
An open source, cross-platform, implementation of C# and the CLR that is
 binary compatible with Microsoft.NET.


More information
================
 - Homepage: https://www.mono-project.com/
]==])

whatis([==[Description: An open source, cross-platform, implementation of C# and the CLR that is
 binary compatible with Microsoft.NET.]==])
whatis([==[Homepage: https://www.mono-project.com/]==])
whatis([==[URL: https://www.mono-project.com/]==])

local root = "/app/software/Mono/6.8.0.105-GCCcore-8.3.0"

conflict("Mono")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMONO", root)
setenv("EBVERSIONMONO", "6.8.0.105")
setenv("EBDEVELMONO", pathJoin(root, "logs/Mono-6.8.0.105-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
