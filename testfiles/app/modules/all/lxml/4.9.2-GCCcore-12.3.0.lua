help([==[

Description
===========
The lxml XML toolkit is a Pythonic binding for the C libraries libxml2 and libxslt.


More information
================
 - Homepage: https://lxml.de/
]==])

whatis([==[Description: The lxml XML toolkit is a Pythonic binding for the C libraries libxml2 and libxslt.]==])
whatis([==[Homepage: https://lxml.de/]==])
whatis([==[URL: https://lxml.de/]==])

local root = "/app/software/lxml/4.9.2-GCCcore-12.3.0"

conflict("lxml")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("libxml2/2.11.4-GCCcore-12.3.0") ) then
    load("libxml2/2.11.4-GCCcore-12.3.0")
end

if not ( isloaded("libxslt/1.1.38-GCCcore-12.3.0") ) then
    load("libxslt/1.1.38-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTLXML", root)
setenv("EBVERSIONLXML", "4.9.2")
setenv("EBDEVELLXML", pathJoin(root, "logs/lxml-4.9.2-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
