help([==[

Description
===========
Packing Optimization for Molecular Dynamics Simulations


More information
================
 - Homepage: http://m3g.iqm.unicamp.br/packmol
]==])

whatis([==[Description: Packing Optimization for Molecular Dynamics Simulations]==])
whatis([==[Homepage: http://m3g.iqm.unicamp.br/packmol]==])
whatis([==[URL: http://m3g.iqm.unicamp.br/packmol]==])

local root = "/app/software/packmol/20.2.2-GCC-10.2.0"

conflict("packmol")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPACKMOL", root)
setenv("EBVERSIONPACKMOL", "20.2.2")
setenv("EBDEVELPACKMOL", pathJoin(root, "logs/packmol-20.2.2-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
