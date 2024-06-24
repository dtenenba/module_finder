help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: https://www.makotemplates.org


Included extensions
===================
Mako-1.2.4, MarkupSafe-2.1.3
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: https://www.makotemplates.org]==])
whatis([==[URL: https://www.makotemplates.org]==])
whatis([==[Extensions: Mako-1.2.4, MarkupSafe-2.1.3]==])

local root = "/app/software/Mako/1.2.4-GCCcore-12.3.0"

conflict("Mako")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.2.4")
setenv("EBDEVELMAKO", pathJoin(root, "logs/Mako-1.2.4-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTMAKO", "MarkupSafe-2.1.3,Mako-1.2.4")
