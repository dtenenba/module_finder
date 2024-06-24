help([==[

Description
===========
Beagle is a software package for phasing genotypes and for imputing
 ungenotyped markers.


More information
================
 - Homepage: https://faculty.washington.edu/browning/beagle/beagle.html
]==])

whatis([==[Description: Beagle is a software package for phasing genotypes and for imputing
 ungenotyped markers.]==])
whatis([==[Homepage: https://faculty.washington.edu/browning/beagle/beagle.html]==])
whatis([==[URL: https://faculty.washington.edu/browning/beagle/beagle.html]==])

local root = "/app/software/Beagle/5.2"

conflict("Beagle")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CLASSPATH", pathJoin(root, "beagle.05Apr21.9b7.jar"))
prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTBEAGLE", root)
setenv("EBVERSIONBEAGLE", "5.2")
setenv("EBDEVELBEAGLE", pathJoin(root, "logs/Beagle-5.2-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[
To execute Beagle-5.2 run: java -jar ${EBROOTBEAGLE}/beagle.05Apr21.9b7.jar
]==])
end
prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "beagle.05Apr21.9b7.jar"))
-- Built with EasyBuild version 4.3.3
