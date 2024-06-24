help([==[

Description
===========
Program for finding CTFs of electron micrographs.


More information
================
 - Homepage: https://grigoriefflab.umassmed.edu/ctffind4
]==])

whatis([==[Description: Program for finding CTFs of electron micrographs.]==])
whatis([==[Homepage: https://grigoriefflab.umassmed.edu/ctffind4]==])
whatis([==[URL: https://grigoriefflab.umassmed.edu/ctffind4]==])

local root = "/app/software/ctffind/4.1.14-fosscuda-2019b"

conflict("ctffind")

if not ( isloaded("fosscuda/2019b") ) then
    load("fosscuda/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

if not ( isloaded("GSL/2.6-GCC-8.3.0") ) then
    load("GSL/2.6-GCC-8.3.0")
end

if not ( isloaded("wxWidgets/3.1.3-GCC-8.3.0") ) then
    load("wxWidgets/3.1.3-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCTFFIND", root)
setenv("EBVERSIONCTFFIND", "4.1.14")
setenv("EBDEVELCTFFIND", pathJoin(root, "logs/ctffind-4.1.14-fosscuda-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.3.0
