help([==[

Description
===========
BamTools provides both a programmer's API and an end-user's toolkit for handling BAM files.


More information
================
 - Homepage: https://github.com/pezmaster31/bamtools
]==])

whatis([==[Description: BamTools provides both a programmer's API and an end-user's toolkit for handling BAM files.]==])
whatis([==[Homepage: https://github.com/pezmaster31/bamtools]==])
whatis([==[URL: https://github.com/pezmaster31/bamtools]==])

local root = "/app/software/BamTools/2.5.1-foss-2019b"

conflict("BamTools")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBAMTOOLS", root)
setenv("EBVERSIONBAMTOOLS", "2.5.1")
setenv("EBDEVELBAMTOOLS", pathJoin(root, "logs/BamTools-2.5.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2