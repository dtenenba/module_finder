help([==[

Description
===========
A suite of
population scale analysis tools for single-cell genomics data including
implementation of Demuxlet / Freemuxlet methods and auxilary tools


More information
================
 - Homepage: https://github.com/statgen/popscle
]==])

whatis([==[Description: A suite of
population scale analysis tools for single-cell genomics data including
implementation of Demuxlet / Freemuxlet methods and auxilary tools ]==])
whatis([==[Homepage: https://github.com/statgen/popscle]==])
whatis([==[URL: https://github.com/statgen/popscle]==])

local root = "/app/software/popscle/0.1-beta-foss-2019b"

conflict("popscle")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPOPSCLE", root)
setenv("EBVERSIONPOPSCLE", "0.1-beta")
setenv("EBDEVELPOPSCLE", pathJoin(root, "logs/popscle-0.1-beta-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.3.0
