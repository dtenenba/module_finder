help([==[

Description
===========
Metal - Meta Analysis Helper. The METAL software is designed to facilitate meta-analysis of large
 datasets (such as several whole genome scans) in a convenient, rapid and memory efficient manner.


More information
================
 - Homepage: http://csg.sph.umich.edu/abecasis/Metal/
]==])

whatis([==[Description: Metal - Meta Analysis Helper. The METAL software is designed to facilitate meta-analysis of large
 datasets (such as several whole genome scans) in a convenient, rapid and memory efficient manner.]==])
whatis([==[Homepage: http://csg.sph.umich.edu/abecasis/Metal/]==])
whatis([==[URL: http://csg.sph.umich.edu/abecasis/Metal/]==])

local root = "/app/software/Metal/2020-05-05-GCC-10.2.0"

conflict("Metal")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMETAL", root)
setenv("EBVERSIONMETAL", "2020-05-05")
setenv("EBDEVELMETAL", pathJoin(root, "logs/Metal-2020-05-05-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
