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

local root = "/app/software/MUMPS/5.4.0-foss-2021a-metis"

conflict("MUMPS")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("SCOTCH/6.1.0-gompi-2021a") ) then
    load("SCOTCH/6.1.0-gompi-2021a")
end

if not ( isloaded("METIS/5.1.0-GCCcore-10.3.0") ) then
    load("METIS/5.1.0-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMUMPS", root)
setenv("EBVERSIONMUMPS", "5.4.0")
setenv("EBDEVELMUMPS", pathJoin(root, "logs/MUMPS-5.4.0-foss-2021a-metis-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
