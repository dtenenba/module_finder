help([==[

Description
===========
FastQC is a quality control application for high throughput
sequence data. It reads in sequence data in a variety of formats and can either
provide an interactive application to review the results of several different
QC checks, or create an HTML based report which can be integrated into a
pipeline.


More information
================
 - Homepage: https://www.bioinformatics.babraham.ac.uk/projects/fastqc/
]==])

whatis([==[Description: FastQC is a quality control application for high throughput
sequence data. It reads in sequence data in a variety of formats and can either
provide an interactive application to review the results of several different
QC checks, or create an HTML based report which can be integrated into a
pipeline.]==])
whatis([==[Homepage: https://www.bioinformatics.babraham.ac.uk/projects/fastqc/]==])
whatis([==[URL: https://www.bioinformatics.babraham.ac.uk/projects/fastqc/]==])

local root = "/app/software/FastQC/0.11.9-Java-11"

conflict("FastQC")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "cisd-jhdf5.jar"))
prepend_path("CLASSPATH", pathJoin(root, "jbzip2-0.9.jar"))
prepend_path("CLASSPATH", pathJoin(root, "sam-1.103.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFASTQC", root)
setenv("EBVERSIONFASTQC", "0.11.9")
setenv("EBDEVELFASTQC", pathJoin(root, "logs/FastQC-0.11.9-Java-11-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
