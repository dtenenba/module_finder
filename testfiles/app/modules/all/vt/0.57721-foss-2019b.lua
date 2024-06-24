help([==[

Description
===========
A tool set for short variant discovery in genetic sequence data.


More information
================
 - Homepage: http://genome.sph.umich.edu/wiki/Vt
]==])

whatis([==[Description: A tool set for short variant discovery in genetic sequence data.]==])
whatis([==[Homepage: http://genome.sph.umich.edu/wiki/Vt]==])
whatis([==[URL: http://genome.sph.umich.edu/wiki/Vt]==])

local root = "/app/software/vt/0.57721-foss-2019b"

conflict("vt")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVT", root)
setenv("EBVERSIONVT", "0.57721")
setenv("EBDEVELVT", pathJoin(root, "logs/vt-0.57721-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
