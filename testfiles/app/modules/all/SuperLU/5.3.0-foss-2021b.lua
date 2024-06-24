help([==[

Description
===========
SuperLU is a general purpose library for the direct solution of large, sparse, nonsymmetric systems
 of linear equations on high performance machines.


More information
================
 - Homepage: https://crd-legacy.lbl.gov/~xiaoye/SuperLU/
]==])

whatis([==[Description: SuperLU is a general purpose library for the direct solution of large, sparse, nonsymmetric systems
 of linear equations on high performance machines.]==])
whatis([==[Homepage: https://crd-legacy.lbl.gov/~xiaoye/SuperLU/]==])
whatis([==[URL: https://crd-legacy.lbl.gov/~xiaoye/SuperLU/]==])

local root = "/app/software/SuperLU/5.3.0-foss-2021b"

conflict("SuperLU")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSUPERLU", root)
setenv("EBVERSIONSUPERLU", "5.3.0")
setenv("EBDEVELSUPERLU", pathJoin(root, "logs/SuperLU-5.3.0-foss-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
