help([==[

Description
===========
To create stitched enhancers, and to separate super-enhancers from typical enhancers using sequencing data (.bam) given a file of previously identified constituent enhancers (.gff)


More information
================
 - Homepage: http://younglab.wi.mit.edu/super_enhancer_code.html
]==])

whatis([==[Description: To create stitched enhancers, and to separate super-enhancers from typical enhancers using sequencing data (.bam) given a file of previously identified constituent enhancers (.gff)]==])
whatis([==[Homepage: http://younglab.wi.mit.edu/super_enhancer_code.html]==])
whatis([==[URL: http://younglab.wi.mit.edu/super_enhancer_code.html]==])

local root = "/app/software/ROSE/1-GCCcore-8.3.0-Python-2.7.16"

conflict("ROSE")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTROSE", root)
setenv("EBVERSIONROSE", "1")
setenv("EBDEVELROSE", pathJoin(root, "logs/ROSE-1-GCCcore-8.3.0-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", root)
prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.2
