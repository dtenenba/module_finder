help([==[

Description
===========
Ninja is a small build system with a focus on speed.


More information
================
 - Homepage: https://ninja-build.org/
]==])

whatis([==[Description: Ninja is a small build system with a focus on speed.]==])
whatis([==[Homepage: https://ninja-build.org/]==])
whatis([==[URL: https://ninja-build.org/]==])

local root = "/app/software/Ninja/1.10.2-GCCcore-11.2.0"

conflict("Ninja")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNINJA", root)
setenv("EBVERSIONNINJA", "1.10.2")
setenv("EBDEVELNINJA", pathJoin(root, "logs/Ninja-1.10.2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
