help([==[

Description
===========
Fiji is an image processing package—a 'batteries-included' distribution of
 ImageJ, bundling a lot of plugins which facilitate scientific image analysis.
This release is based on ImageJ-2.1.0 and Fiji-2.1.1


More information
================
 - Homepage: https://fiji.sc
]==])

whatis([==[Description: Fiji is an image processing package—a 'batteries-included' distribution of
 ImageJ, bundling a lot of plugins which facilitate scientific image analysis.
This release is based on ImageJ-2.1.0 and Fiji-2.1.1]==])
whatis([==[Homepage: https://fiji.sc]==])
whatis([==[URL: https://fiji.sc]==])

local root = "/app/software/Fiji/2.9.0-Java-1.8"

conflict("Fiji")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFIJI", root)
setenv("EBVERSIONFIJI", "2.9.0")
setenv("EBDEVELFIJI", pathJoin(root, "logs/Fiji-2.9.0-Java-1.8-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[
Additional plugins can be installed in your $HOME/.plugins folder or requested to user support
Use ImageJ/Fiji in headless mode in your scripts with the command `ImageJ-linux64 --headless`
More information at https://imagej.net/Headless
]==])
end
prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.0
