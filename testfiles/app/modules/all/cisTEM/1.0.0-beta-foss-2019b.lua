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

local root = "/app/software/cisTEM/1.0.0-beta-foss-2019b"

conflict("cisTEM")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Mesa/19.2.1-GCCcore-8.3.0") ) then
    load("Mesa/19.2.1-GCCcore-8.3.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-8.3.0") ) then
    load("libGLU/9.0.1-GCCcore-8.3.0")
end

if not ( isloaded("wxWidgets/3.1.3-GCC-8.3.0") ) then
    load("wxWidgets/3.1.3-GCC-8.3.0")
end

if not ( isloaded("Gdk-Pixbuf/2.38.2-GCCcore-8.3.0") ) then
    load("Gdk-Pixbuf/2.38.2-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCISTEM", root)
setenv("EBVERSIONCISTEM", "1.0.0-beta")
setenv("EBDEVELCISTEM", pathJoin(root, "logs/cisTEM-1.0.0-beta-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
