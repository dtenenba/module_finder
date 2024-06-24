help([==[

Description
===========
GIGGLE is a genomics search engine that identifies and ranks the significance of shared genomic loci between query features and thousands of genome interval files.


More information
================
 - Homepage: https://github.com/ryanlayer/giggle
]==])

whatis([==[Description: GIGGLE is a genomics search engine that identifies and ranks the significance of shared genomic loci between query features and thousands of genome interval files.]==])
whatis([==[Homepage: https://github.com/ryanlayer/giggle]==])
whatis([==[URL: https://github.com/ryanlayer/giggle]==])

local root = "/app/software/giggle/master-foss-2020b"

conflict("giggle")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("libgcrypt/1.9.2-GCCcore-10.2.0") ) then
    load("libgcrypt/1.9.2-GCCcore-10.2.0")
end

if not ( isloaded("libmicrohttpd/0.9.73-GCCcore-10.2.0") ) then
    load("libmicrohttpd/0.9.73-GCCcore-10.2.0")
end

if not ( isloaded("HTSlib/1.11-GCC-10.2.0") ) then
    load("HTSlib/1.11-GCC-10.2.0")
end

if not ( isloaded("SAMtools/1.11-GCC-10.2.0") ) then
    load("SAMtools/1.11-GCC-10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGIGGLE", root)
setenv("EBVERSIONGIGGLE", "master")
setenv("EBDEVELGIGGLE", pathJoin(root, "logs/giggle-master-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.5.2
