help([==[

Description
===========
The Astropy Project is a community effort to develop a common 
core package for Astronomy in Python and foster an ecosystem of interoperable 
astronomy packages.

The Astropy community is committed to supporting diversity and inclusion.


More information
================
 - Homepage: https://www.astropy.org/


]==])

whatis([==[Description: The Astropy Project is a community effort to develop a common 
core package for Astronomy in Python and foster an ecosystem of interoperable 
astronomy packages.

The Astropy community is committed to supporting diversity and inclusion.]==])
whatis([==[Homepage: https://www.astropy.org/]==])
whatis([==[URL: https://www.astropy.org/]==])

local root = "/app/software/astropy/6.0.1-gfbf-2023a"

conflict("astropy")

if not ( isloaded("gfbf/2023a") ) then
    load("gfbf/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.3.0") ) then
    load("PyYAML/6.0-GCCcore-12.3.0")
end

if not ( isloaded("matplotlib/3.7.2-gfbf-2023a") ) then
    load("matplotlib/3.7.2-gfbf-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTASTROPY", root)
setenv("EBVERSIONASTROPY", "5.3.4")
setenv("EBDEVELASTROPY", pathJoin(root, "logs/astropy-6.0.1-gfbf-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
