help([==[

Description
===========
Z3 is a theorem prover from Microsoft Research.


More information
================
 - Homepage: https://github.com/Z3Prover/z3
]==])

whatis([==[Description: 
 Z3 is a theorem prover from Microsoft Research.
]==])
whatis([==[Homepage: https://github.com/Z3Prover/z3]==])
whatis([==[URL: https://github.com/Z3Prover/z3]==])

local root = "/app/software/Z3/4.8.12-GCCcore-11.2.0"

conflict("Z3")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTZ3", root)
setenv("EBVERSIONZ3", "4.8.12")
setenv("EBDEVELZ3", pathJoin(root, "logs/Z3-4.8.12-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4