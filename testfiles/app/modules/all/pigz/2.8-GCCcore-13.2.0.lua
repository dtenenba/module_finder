help([==[

Description
===========
pigz, which stands for parallel implementation of gzip, is a fully
 functional replacement for gzip that exploits multiple processors and multiple
 cores to the hilt when compressing data. pigz was written by Mark Adler, and
 uses the zlib and pthread libraries.


More information
================
 - Homepage: https://zlib.net/pigz/
]==])

whatis([==[Description: 
 pigz, which stands for parallel implementation of gzip, is a fully
 functional replacement for gzip that exploits multiple processors and multiple
 cores to the hilt when compressing data. pigz was written by Mark Adler, and
 uses the zlib and pthread libraries.
]==])
whatis([==[Homepage: https://zlib.net/pigz/]==])
whatis([==[URL: https://zlib.net/pigz/]==])

local root = "/app/software/pigz/2.8-GCCcore-13.2.0"

conflict("pigz")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPIGZ", root)
setenv("EBVERSIONPIGZ", "2.8")
setenv("EBDEVELPIGZ", pathJoin(root, "logs/pigz-2.8-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
