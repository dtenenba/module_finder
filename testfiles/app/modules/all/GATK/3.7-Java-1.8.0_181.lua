help([[The Genome Analysis Toolkit or GATK is a software package developed at the Broad Institute 
 to analyse next-generation resequencing data. The toolkit offers a wide variety of tools,
 with a primary focus on variant discovery and genotyping as well as strong emphasis on 
 data quality assurance. Its robust architecture, powerful processing engine and 
 high-performance computing features make it capable of taking on projects of any size. - Homepage: http://www.broadinstitute.org/gatk/]])

whatis([[Description: The Genome Analysis Toolkit or GATK is a software package developed at the Broad Institute 
 to analyse next-generation resequencing data. The toolkit offers a wide variety of tools,
 with a primary focus on variant discovery and genotyping as well as strong emphasis on 
 data quality assurance. Its robust architecture, powerful processing engine and 
 high-performance computing features make it capable of taking on projects of any size. - Homepage: http://www.broadinstitute.org/gatk/]])

local root = "/app/software/GATK/3.7-Java-1.8.0_181"

conflict("GATK")

if not isloaded("Java/1.8.0_181") then
    load("Java/1.8.0_181")
end

prepend_path("CLASSPATH", pathJoin(root, "GenomeAnalysisTK.jar"))
setenv("EBROOTGATK", root)
setenv("EBVERSIONGATK", "3.7")
setenv("EBDEVELGATK", pathJoin(root, "/app//logs/GATK-3.7-Java-1.8.0_181-easybuild-devel"))


if mode() == "load" then
    io.stderr:write([==[To execute GATK run: java -jar $EBROOTGATK/GenomeAnalysisTK.jar
    ]==])
end
-- Built with EasyBuild version 3.0.2
