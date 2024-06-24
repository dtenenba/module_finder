help([==[

Description
===========
The Genome Analysis Toolkit or GATK is a software package developed at the Broad Institute
 to analyse next-generation resequencing data. The toolkit offers a wide variety of tools,
 with a primary focus on variant discovery and genotyping as well as strong emphasis on
 data quality assurance. Its robust architecture, powerful processing engine and
 high-performance computing features make it capable of taking on projects of any size.


More information
================
 - Homepage: https://www.broadinstitute.org/gatk/
]==])

whatis([==[Description: The Genome Analysis Toolkit or GATK is a software package developed at the Broad Institute
 to analyse next-generation resequencing data. The toolkit offers a wide variety of tools,
 with a primary focus on variant discovery and genotyping as well as strong emphasis on
 data quality assurance. Its robust architecture, powerful processing engine and
 high-performance computing features make it capable of taking on projects of any size.]==])
whatis([==[Homepage: https://www.broadinstitute.org/gatk/]==])
whatis([==[URL: https://www.broadinstitute.org/gatk/]==])

local root = "/app/software/GATK/4.2.5.0-GCCcore-11.2.0-Java-11"

conflict("GATK")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CLASSPATH", pathJoin(root, "gatk-package-4.2.5.0-local.jar"))
prepend_path("CLASSPATH", pathJoin(root, "gatk-package-4.2.5.0-spark.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGATK", root)
setenv("EBVERSIONGATK", "4.2.5.0")
setenv("EBDEVELGATK", pathJoin(root, "logs/GATK-4.2.5.0-GCCcore-11.2.0-Java-11-easybuild-devel"))

prepend_path("PATH", root)

if mode() == "load" then
io.stderr:write([==[WARNING: GATK v4.2.5.0 support for Java 11 is in beta state. Use at your own risk.
]==])
end
-- Built with EasyBuild version 4.5.3
