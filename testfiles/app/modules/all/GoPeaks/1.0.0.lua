help([==[

Description
===========
GoPeaks is a peak caller designed for CUT&TAG/CUT&RUN sequencing data.


More information
================
 - Homepage: https://github.com/maxsonBraunLab/gopeaks
]==])

whatis([==[Description: GoPeaks is a peak caller designed for CUT&TAG/CUT&RUN sequencing data.]==])
whatis([==[Homepage: https://github.com/maxsonBraunLab/gopeaks]==])
whatis([==[URL: https://github.com/maxsonBraunLab/gopeaks]==])

local root = "/app/software/GoPeaks/1.0.0"

conflict("GoPeaks")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGOPEAKS", root)
setenv("EBVERSIONGOPEAKS", "1.0.0")
setenv("EBDEVELGOPEAKS", pathJoin(root, "logs/GoPeaks-1.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
