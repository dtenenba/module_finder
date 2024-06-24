help([==[

Description
===========
Libaec provides fast lossless compression of 1 up to 32 bit wide signed or unsigned integers
(samples). The library achieves best results for low entropy data as often encountered in space imaging
instrument data or numerical model output from weather or climate simulations. While floating point representations
are not directly supported, they can also be efficiently coded by grouping exponents and mantissa.


More information
================
 - Homepage: https://gitlab.dkrz.de/k202009/libaec
]==])

whatis([==[Description: Libaec provides fast lossless compression of 1 up to 32 bit wide signed or unsigned integers
(samples). The library achieves best results for low entropy data as often encountered in space imaging
instrument data or numerical model output from weather or climate simulations. While floating point representations
are not directly supported, they can also be efficiently coded by grouping exponents and mantissa.]==])
whatis([==[Homepage: https://gitlab.dkrz.de/k202009/libaec]==])
whatis([==[URL: https://gitlab.dkrz.de/k202009/libaec]==])

local root = "/app/software/libaec/1.0.6-GCCcore-11.3.0"

conflict("libaec")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBAEC", root)
setenv("EBVERSIONLIBAEC", "1.0.6")
setenv("EBDEVELLIBAEC", pathJoin(root, "logs/libaec-1.0.6-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
