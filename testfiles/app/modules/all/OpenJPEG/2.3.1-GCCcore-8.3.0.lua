help([==[

Description
===========
OpenJPEG is an open-source JPEG 2000 codec written in
 C language. It has been developed in order to promote the use of JPEG 2000,
 a still-image compression standard from the Joint Photographic Experts Group
 (JPEG). Since may 2015, it is officially recognized by ISO/IEC and ITU-T as
 a JPEG 2000 Reference Software.


More information
================
 - Homepage: http://www.openjpeg.org/
]==])

whatis([==[Description: OpenJPEG is an open-source JPEG 2000 codec written in
 C language. It has been developed in order to promote the use of JPEG 2000,
 a still-image compression standard from the Joint Photographic Experts Group
 (JPEG). Since may 2015, it is officially recognized by ISO/IEC and ITU-T as
 a JPEG 2000 Reference Software.]==])
whatis([==[Homepage: http://www.openjpeg.org/]==])
whatis([==[URL: http://www.openjpeg.org/]==])

local root = "/app/software/OpenJPEG/2.3.1-GCCcore-8.3.0"

conflict("OpenJPEG")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENJPEG", root)
setenv("EBVERSIONOPENJPEG", "2.3.1")
setenv("EBDEVELOPENJPEG", pathJoin(root, "logs/OpenJPEG-2.3.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2