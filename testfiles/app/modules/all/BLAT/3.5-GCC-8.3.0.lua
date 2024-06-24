help([==[

Description
===========
BLAT on DNA is designed to quickly find sequences of 95% and
greater similarity of length 25 bases or more.


More information
================
 - Homepage: https://genome.ucsc.edu/FAQ/FAQblat.html
]==])

whatis([==[Description: BLAT on DNA is designed to quickly find sequences of 95% and
greater similarity of length 25 bases or more.]==])
whatis([==[Homepage: https://genome.ucsc.edu/FAQ/FAQblat.html]==])
whatis([==[URL: https://genome.ucsc.edu/FAQ/FAQblat.html]==])

local root = "/app/software/BLAT/3.5-GCC-8.3.0"

conflict("BLAT")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBLAT", root)
setenv("EBVERSIONBLAT", "3.5")
setenv("EBDEVELBLAT", pathJoin(root, "logs/BLAT-3.5-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
