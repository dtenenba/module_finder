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


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.7.4-GCCcore-8.3.0 (default), Python/2.7.16-GCCcore-8.3.0
]==])

whatis([==[Description: The Genome Analysis Toolkit or GATK is a software package developed at the Broad Institute
 to analyse next-generation resequencing data. The toolkit offers a wide variety of tools,
 with a primary focus on variant discovery and genotyping as well as strong emphasis on
 data quality assurance. Its robust architecture, powerful processing engine and
 high-performance computing features make it capable of taking on projects of any size.]==])
whatis([==[Homepage: https://www.broadinstitute.org/gatk/]==])
whatis([==[URL: https://www.broadinstitute.org/gatk/]==])
whatis([==[Compatible modules: Python/3.7.4-GCCcore-8.3.0 (default), Python/2.7.16-GCCcore-8.3.0]==])

local root = "/app/software/GATK/4.1.4.0-GCCcore-8.3.0-Java-11"

conflict("GATK")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) and not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CLASSPATH", pathJoin(root, "gatk-package-4.1.4.0-local.jar"))
prepend_path("CLASSPATH", pathJoin(root, "gatk-package-4.1.4.0-spark.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGATK", root)
setenv("EBVERSIONGATK", "4.1.4.0")
setenv("EBDEVELGATK", pathJoin(root, "logs/GATK-4.1.4.0-GCCcore-8.3.0-Java-11-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.0
