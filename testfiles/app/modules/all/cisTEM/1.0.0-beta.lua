help([==[

Description
===========
cisTEM is user-friendly software to process cryo-EM images of macromolecular complexes
 and obtain high-resolution 3D reconstructions from them.


More information
================
 - Homepage: https://cistem.org/
]==])

whatis([==[Description:  cisTEM is user-friendly software to process cryo-EM images of macromolecular complexes
 and obtain high-resolution 3D reconstructions from them. ]==])
whatis([==[Homepage: https://cistem.org/]==])
whatis([==[URL: https://cistem.org/]==])

local root = "/app/software/cisTEM/1.0.0-beta"

conflict("cisTEM")

if not ( isloaded("GTK+/2.24.32-foss-2019b") ) then
    load("GTK+/2.24.32-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCISTEM", root)
setenv("EBVERSIONCISTEM", "1.0.0-beta")
setenv("EBDEVELCISTEM", pathJoin(root, "logs/cisTEM-1.0.0-beta-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.2
