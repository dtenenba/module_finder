help([==[

Description
===========
IT++ is a C++ library of mathematical, signal processing and communication
 classes and functions. Its main use is in simulation of communication systems and for
 performing research in the area of communications.


More information
================
 - Homepage: https://sourceforge.net/projects/itpp/
]==])

whatis([==[Description: IT++ is a C++ library of mathematical, signal processing and communication
 classes and functions. Its main use is in simulation of communication systems and for
 performing research in the area of communications.]==])
whatis([==[Homepage: https://sourceforge.net/projects/itpp/]==])
whatis([==[URL: https://sourceforge.net/projects/itpp/]==])

local root = "/app/software/itpp/4.3.1-foss-2019b"

conflict("itpp")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTITPP", root)
setenv("EBVERSIONITPP", "4.3.1")
setenv("EBDEVELITPP", pathJoin(root, "logs/itpp-4.3.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
