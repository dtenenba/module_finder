help([==[

Description
===========
BBMap short read aligner, and other bioinformatic tools.


More information
================
 - Homepage: https://sourceforge.net/projects/bbmap/
]==])

whatis([==[Description: BBMap short read aligner, and other bioinformatic tools.]==])
whatis([==[Homepage: https://sourceforge.net/projects/bbmap/]==])
whatis([==[URL: https://sourceforge.net/projects/bbmap/]==])

local root = "/app/software/BBMap/38.79-GCC-8.3.0"

conflict("BBMap")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTBBMAP", root)
setenv("EBVERSIONBBMAP", "38.79")
setenv("EBDEVELBBMAP", pathJoin(root, "logs/BBMap-38.79-GCC-8.3.0-easybuild-devel"))

prepend_path("PATH", root)

if mode() == "load" then
io.stderr:write([==[For improved speed, add 'usejni=t' to the command line of BBMap tools which support the use of the compiled jni C code.
]==])
end
-- Built with EasyBuild version 4.2.1
