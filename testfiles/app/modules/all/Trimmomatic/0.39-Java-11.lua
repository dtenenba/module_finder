help([==[

Description
===========
Trimmomatic performs a variety of useful trimming tasks for illumina 
 paired-end and single ended data.The selection of trimming steps and their associated 
 parameters are supplied on the command line.


More information
================
 - Homepage: http://www.usadellab.org/cms/?page=trimmomatic
]==])

whatis([==[Description: Trimmomatic performs a variety of useful trimming tasks for illumina 
 paired-end and single ended data.The selection of trimming steps and their associated 
 parameters are supplied on the command line. ]==])
whatis([==[Homepage: http://www.usadellab.org/cms/?page=trimmomatic]==])
whatis([==[URL: http://www.usadellab.org/cms/?page=trimmomatic]==])

local root = "/app/software/Trimmomatic/0.39-Java-11"

conflict("Trimmomatic")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CLASSPATH", pathJoin(root, "trimmomatic-0.39.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTRIMMOMATIC", root)
setenv("EBVERSIONTRIMMOMATIC", "0.39")
setenv("EBDEVELTRIMMOMATIC", pathJoin(root, "logs/Trimmomatic-0.39-Java-11-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute Trimmomatic run: java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.39.jar
]==])
end
-- Built with EasyBuild version 4.2.1
