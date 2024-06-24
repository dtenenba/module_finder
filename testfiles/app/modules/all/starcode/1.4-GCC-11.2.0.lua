help([==[

Description
===========
Starcode is a DNA sequence clustering software. Starcode clustering is based on all pairs
search within a specified Levenshtein distance (allowing insertions and deletions), followed by a clustering
algorithm: Message Passing, Spheres or Connected Components.


More information
================
 - Homepage: https://github.com/gui11aume/starcode
]==])

whatis([==[Description: Starcode is a DNA sequence clustering software. Starcode clustering is based on all pairs
search within a specified Levenshtein distance (allowing insertions and deletions), followed by a clustering
algorithm: Message Passing, Spheres or Connected Components.]==])
whatis([==[Homepage: https://github.com/gui11aume/starcode]==])
whatis([==[URL: https://github.com/gui11aume/starcode]==])

local root = "/app/software/starcode/1.4-GCC-11.2.0"

conflict("starcode")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTARCODE", root)
setenv("EBVERSIONSTARCODE", "1.4")
setenv("EBDEVELSTARCODE", pathJoin(root, "logs/starcode-1.4-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
