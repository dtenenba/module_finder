help([==[

Description
===========
BAli-Phy estimates multiple sequence alignments and evolutionary trees from DNA, amino acid, 
or codon sequences.


More information
================
 - Homepage: http://www.bali-phy.org/
]==])

whatis([==[Description: BAli-Phy estimates multiple sequence alignments and evolutionary trees from DNA, amino acid, 
or codon sequences.]==])
whatis([==[Homepage: http://www.bali-phy.org/]==])
whatis([==[URL: http://www.bali-phy.org/]==])

local root = "/app/software/BAli-Phy/4.0-beta8-GCC-12.2.0"

conflict("BAli-Phy")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("Boost/1.81.0-GCC-12.2.0") ) then
    load("Boost/1.81.0-GCC-12.2.0")
end

if not ( isloaded("Eigen/3.4.0-GCCcore-12.2.0") ) then
    load("Eigen/3.4.0-GCCcore-12.2.0")
end

if not ( isloaded("nlohmann_json/3.11.2-GCCcore-12.2.0") ) then
    load("nlohmann_json/3.11.2-GCCcore-12.2.0")
end

if not ( isloaded("fmt/9.1.0-GCCcore-12.2.0") ) then
    load("fmt/9.1.0-GCCcore-12.2.0")
end

if not ( isloaded("cairo/1.17.4-GCCcore-12.2.0") ) then
    load("cairo/1.17.4-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBALIMINPHY", root)
setenv("EBVERSIONBALIMINPHY", "4.0-beta8")
setenv("EBDEVELBALIMINPHY", pathJoin(root, "logs/BAli-Phy-4.0-beta8-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
