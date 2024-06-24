help([==[

Description
===========
Beautiful Soup is a Python library designed for quick turnaround projects like screen-scraping.


More information
================
 - Homepage: https://www.crummy.com/software/BeautifulSoup


Included extensions
===================
BeautifulSoup-4.11.1, hatchling-1.12.2, soupsieve-2.3.2.post1
]==])

whatis([==[Description: Beautiful Soup is a Python library designed for quick turnaround projects like screen-scraping.]==])
whatis([==[Homepage: https://www.crummy.com/software/BeautifulSoup]==])
whatis([==[URL: https://www.crummy.com/software/BeautifulSoup]==])
whatis([==[Extensions: BeautifulSoup-4.11.1, hatchling-1.12.2, soupsieve-2.3.2.post1]==])

local root = "/app/software/BeautifulSoup/4.11.1-GCCcore-12.2.0"

conflict("BeautifulSoup")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBEAUTIFULSOUP", root)
setenv("EBVERSIONBEAUTIFULSOUP", "4.11.1")
setenv("EBDEVELBEAUTIFULSOUP", pathJoin(root, "logs/BeautifulSoup-4.11.1-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTBEAUTIFULSOUP", "hatchling-1.12.2,soupsieve-2.3.2.post1,BeautifulSoup-4.11.1")
