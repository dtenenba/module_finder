help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: http://www.makotemplates.org
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: http://www.makotemplates.org]==])
whatis([==[URL: http://www.makotemplates.org]==])

local root = "/app/software/Mako/1.1.0-GCCcore-8.3.0"

conflict("Mako")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.1.0")
setenv("EBDEVELMAKO", pathJoin(root, "logs/Mako-1.1.0-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
