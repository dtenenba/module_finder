help([==[

Description
===========
giflib is a library for reading and writing gif images.
It is API and ABI compatible with libungif which was in wide use while
the LZW compression algorithm was patented.


More information
================
 - Homepage: http://libungif.sourceforge.net/
]==])

whatis([==[Description: giflib is a library for reading and writing gif images.
It is API and ABI compatible with libungif which was in wide use while
the LZW compression algorithm was patented.]==])
whatis([==[Homepage: http://libungif.sourceforge.net/]==])
whatis([==[URL: http://libungif.sourceforge.net/]==])

local root = "/app/software/giflib/5.0.5-GCCcore-8.3.0"

conflict("giflib")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGIFLIB", root)
setenv("EBVERSIONGIFLIB", "5.0.5")
setenv("EBDEVELGIFLIB", pathJoin(root, "logs/giflib-5.0.5-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
