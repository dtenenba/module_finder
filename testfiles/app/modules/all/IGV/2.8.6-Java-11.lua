help([==[

Description
===========
This package contains command line utilities for
 preprocessing, computing feature count density (coverage),  sorting, and
 indexing data files.


More information
================
 - Homepage: http://www.broadinstitute.org/software/igv/
]==])

whatis([==[Description: This package contains command line utilities for
 preprocessing, computing feature count density (coverage),  sorting, and
 indexing data files.]==])
whatis([==[Homepage: http://www.broadinstitute.org/software/igv/]==])
whatis([==[URL: http://www.broadinstitute.org/software/igv/]==])

local root = "/app/software/IGV/2.8.6-Java-11"

conflict("IGV")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTIGV", root)
setenv("EBVERSIONIGV", "2.8.6")
setenv("EBDEVELIGV", pathJoin(root, "logs/IGV-2.8.6-Java-11-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
