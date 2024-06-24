help([==[

Description
===========
This package contains command line utilities for preprocessing, 
 computing feature count density (coverage),  sorting, and indexing data files.
 See also http://www.broadinstitute.org/software/igv/igvtools_commandline.


More information
================
 - Homepage: http://www.broadinstitute.org/software/igv/
]==])

whatis([==[Description:  This package contains command line utilities for preprocessing, 
 computing feature count density (coverage),  sorting, and indexing data files.
 See also http://www.broadinstitute.org/software/igv/igvtools_commandline. ]==])
whatis([==[Homepage: http://www.broadinstitute.org/software/igv/]==])

local root = "/app/software/IGV/2.5.0-Java-1.8"

conflict("IGV")

if not isloaded("Java/1.8") then
    load("Java/1.8")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTIGV", root)
setenv("EBVERSIONIGV", "2.5.0")
setenv("EBDEVELIGV", pathJoin(root, "/app/logs/IGV-2.5.0-Java-1.8-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.8.1
