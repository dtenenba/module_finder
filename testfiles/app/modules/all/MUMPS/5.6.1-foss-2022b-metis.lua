help([==[

Description
===========
A parallel sparse direct solver


More information
================
 - Homepage: https://graal.ens-lyon.fr/MUMPS/
]==])

whatis([==[Description: A parallel sparse direct solver]==])
whatis([==[Homepage: https://graal.ens-lyon.fr/MUMPS/]==])
whatis([==[URL: https://graal.ens-lyon.fr/MUMPS/]==])

local root = "/app/software/MUMPS/5.6.1-foss-2022b-metis"

conflict("MUMPS")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("SCOTCH/7.0.3-gompi-2022b") ) then
    load("SCOTCH/7.0.3-gompi-2022b")
end

if not ( isloaded("METIS/5.1.0-GCCcore-12.2.0") ) then
    load("METIS/5.1.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMUMPS", root)
setenv("EBVERSIONMUMPS", "5.6.1")
setenv("EBDEVELMUMPS", pathJoin(root, "logs/MUMPS-5.6.1-foss-2022b-metis-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
