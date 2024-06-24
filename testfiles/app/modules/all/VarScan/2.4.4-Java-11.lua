help([==[

Description
===========
Variant calling and somatic mutation/CNV detection for next-generation sequencing data


More information
================
 - Homepage: https://github.com/dkoboldt/varscan
]==])

whatis([==[Description: Variant calling and somatic mutation/CNV detection for next-generation sequencing data]==])
whatis([==[Homepage: https://github.com/dkoboldt/varscan]==])
whatis([==[URL: https://github.com/dkoboldt/varscan]==])

local root = "/app/software/VarScan/2.4.4-Java-11"

conflict("VarScan")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "VarScan.v2.4.4.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTVARSCAN", root)
setenv("EBVERSIONVARSCAN", "2.4.4")
setenv("EBDEVELVARSCAN", pathJoin(root, "logs/VarScan-2.4.4-Java-11-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute VarScan run: java -jar $EBROOTVARSCAN/VarScan.v2.4.4.jar
]==])
end
prepend_path("PATH", root)
-- Built with EasyBuild version 4.6.2
