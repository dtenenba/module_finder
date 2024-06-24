help([==[

Description
===========
EPACTS is a versatile software pipeline to perform various statistical tests for identifying
 genome-wide association from sequence data through a user-friendly interface, both to scientific analysts and
 to method developers.


More information
================
 - Homepage: https://github.com/statgen/EPACTS
]==])

whatis([==[Description: EPACTS is a versatile software pipeline to perform various statistical tests for identifying
 genome-wide association from sequence data through a user-friendly interface, both to scientific analysts and
 to method developers.]==])
whatis([==[Homepage: https://github.com/statgen/EPACTS]==])
whatis([==[URL: https://github.com/statgen/EPACTS]==])

local root = "/app/software/EPACTS/3.3.2-foss-2020b"

conflict("EPACTS")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("R/4.0.3-foss-2020b") ) then
    load("R/4.0.3-foss-2020b")
end

if not ( isloaded("groff/1.22.4-GCCcore-10.2.0") ) then
    load("groff/1.22.4-GCCcore-10.2.0")
end

if not ( isloaded("Ghostscript/9.53.3-GCCcore-10.2.0") ) then
    load("Ghostscript/9.53.3-GCCcore-10.2.0")
end

if not ( isloaded("gnuplot/5.4.1-GCCcore-10.2.0") ) then
    load("gnuplot/5.4.1-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEPACTS", root)
setenv("EBVERSIONEPACTS", "3.3.2")
setenv("EBDEVELEPACTS", pathJoin(root, "logs/EPACTS-3.3.2-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
