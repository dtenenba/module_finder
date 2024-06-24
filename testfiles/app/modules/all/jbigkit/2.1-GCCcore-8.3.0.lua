help([==[

Description
===========
JBIG-KIT is a software implementation of the JBIG1 data
 compression standard (ITU-T T.82), which was designed for bi-level image
 data, such as scanned documents.


More information
================
 - Homepage: 
]==])

whatis([==[Description: JBIG-KIT is a software implementation of the JBIG1 data
 compression standard (ITU-T T.82), which was designed for bi-level image
 data, such as scanned documents.]==])
whatis([==[Homepage: ]==])
whatis([==[URL: ]==])

local root = "/app/software/jbigkit/2.1-GCCcore-8.3.0"

conflict("jbigkit")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJBIGKIT", root)
setenv("EBVERSIONJBIGKIT", "2.1")
setenv("EBDEVELJBIGKIT", pathJoin(root, "logs/jbigkit-2.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
