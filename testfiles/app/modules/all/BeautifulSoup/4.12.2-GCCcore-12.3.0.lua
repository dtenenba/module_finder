help([==[

Description
===========
Beautiful Soup is a Python library designed for quick turnaround projects like screen-scraping.


More information
================
 - Homepage: https://www.crummy.com/software/BeautifulSoup


Included extensions
===================
BeautifulSoup-4.12.2, soupsieve-2.4.1
]==])

whatis([==[Description: Beautiful Soup is a Python library designed for quick turnaround projects like screen-scraping.]==])
whatis([==[Homepage: https://www.crummy.com/software/BeautifulSoup]==])
whatis([==[URL: https://www.crummy.com/software/BeautifulSoup]==])
whatis([==[Extensions: BeautifulSoup-4.12.2, soupsieve-2.4.1]==])

local root = "/app/software/BeautifulSoup/4.12.2-GCCcore-12.3.0"

conflict("BeautifulSoup")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("hatchling/1.18.0-GCCcore-12.3.0") ) then
    load("hatchling/1.18.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBEAUTIFULSOUP", root)
setenv("EBVERSIONBEAUTIFULSOUP", "4.12.2")
setenv("EBDEVELBEAUTIFULSOUP", pathJoin(root, "logs/BeautifulSoup-4.12.2-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTBEAUTIFULSOUP", "soupsieve-2.4.1,BeautifulSoup-4.12.2")
