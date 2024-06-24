help([==[

Description
===========
Single locus resolution of Transposable ELEment expression using next-generation sequencing.


More information
================
 - Homepage: https://github.com/mlbendall/telescope
]==])

whatis([==[Description: Single locus resolution of Transposable ELEment expression using next-generation sequencing.]==])
whatis([==[Homepage: https://github.com/mlbendall/telescope]==])
whatis([==[URL: https://github.com/mlbendall/telescope]==])

local root = "/app/software/Telescope/1.0.3-20230222-gfbf-2022b"

conflict("Telescope")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.2.0") ) then
    load("PyYAML/6.0-GCCcore-12.2.0")
end

if not ( isloaded("Pysam/0.21.0-GCC-12.2.0") ) then
    load("Pysam/0.21.0-GCC-12.2.0")
end

if not ( isloaded("HTSlib/1.17-GCC-12.2.0") ) then
    load("HTSlib/1.17-GCC-12.2.0")
end

if not ( isloaded("SAMtools/1.17-GCC-12.2.0") ) then
    load("SAMtools/1.17-GCC-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTELESCOPE", root)
setenv("EBVERSIONTELESCOPE", "1.0.3-20230222")
setenv("EBDEVELTELESCOPE", pathJoin(root, "logs/Telescope-1.0.3-20230222-gfbf-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.0
