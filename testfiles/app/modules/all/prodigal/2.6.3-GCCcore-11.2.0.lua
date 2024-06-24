help([==[

Description
===========
Prodigal (Prokaryotic Dynamic Programming Genefinding Algorithm)
   is a microbial (bacterial and archaeal) gene finding program developed
   at Oak Ridge National Laboratory and the University of Tennessee.


More information
================
 - Homepage: https://github.com/hyattpd/Prodigal/
]==])

whatis([==[Description: Prodigal (Prokaryotic Dynamic Programming Genefinding Algorithm)
   is a microbial (bacterial and archaeal) gene finding program developed
   at Oak Ridge National Laboratory and the University of Tennessee.]==])
whatis([==[Homepage: https://github.com/hyattpd/Prodigal/]==])
whatis([==[URL: https://github.com/hyattpd/Prodigal/]==])

local root = "/app/software/prodigal/2.6.3-GCCcore-11.2.0"

conflict("prodigal")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPRODIGAL", root)
setenv("EBVERSIONPRODIGAL", "2.6.3")
setenv("EBDEVELPRODIGAL", pathJoin(root, "logs/prodigal-2.6.3-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
