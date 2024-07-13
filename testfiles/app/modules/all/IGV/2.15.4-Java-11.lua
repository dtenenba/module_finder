help([==[

Description
===========
This package contains command line utilities for
 preprocessing, computing feature count density (coverage),  sorting, and
 indexing data files.


More information
================
 - Homepage: https://www.broadinstitute.org/software/igv/
]==])

whatis([==[Description: This package contains command line utilities for
 preprocessing, computing feature count density (coverage),  sorting, and
 indexing data files.]==])
whatis([==[Homepage: https://www.broadinstitute.org/software/igv/]==])
whatis([==[URL: https://www.broadinstitute.org/software/igv/]==])

local root = "/app/software/IGV/2.15.4-Java-11"

conflict("IGV")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTIGV", root)
setenv("EBVERSIONIGV", "2.15.4")
setenv("EBDEVELIGV", pathJoin(root, "logs/IGV-2.15.4-Java-11-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.6.2