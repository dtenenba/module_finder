help([==[

Description
===========
The numactl program allows you to run your application program on specific
 cpu's and memory nodes. It does this by supplying a NUMA memory policy to
 the operating system before running your program. The libnuma library provides
 convenient ways for you to add NUMA memory policies into your own program.


More information
================
 - Homepage: https://github.com/numactl/numactl
]==])

whatis([==[Description: 
 The numactl program allows you to run your application program on specific
 cpu's and memory nodes. It does this by supplying a NUMA memory policy to
 the operating system before running your program. The libnuma library provides
 convenient ways for you to add NUMA memory policies into your own program.
]==])
whatis([==[Homepage: https://github.com/numactl/numactl]==])
whatis([==[URL: https://github.com/numactl/numactl]==])

local root = "/app/software/numactl/2.0.16-GCCcore-12.2.0"

conflict("numactl")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNUMACTL", root)
setenv("EBVERSIONNUMACTL", "2.0.16")
setenv("EBDEVELNUMACTL", pathJoin(root, "logs/numactl-2.0.16-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.0
