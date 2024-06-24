help([==[

Description
===========
This RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.


More information
================
 - Homepage: https://www.rstudio.com/
]==])

whatis([==[Description: This RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.
]==])
whatis([==[Homepage: https://www.rstudio.com/]==])
whatis([==[URL: https://www.rstudio.com/]==])

local root = "/app/software/rstudio/1.3.1093-foss-2019b-Java-11-R-4.0.2"

conflict("rstudio")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("libpthread-stubs/0.4-GCCcore-8.3.0") ) then
    load("libpthread-stubs/0.4-GCCcore-8.3.0")
end

if not ( isloaded("Boost/1.72.0-gompi-2019b") ) then
    load("Boost/1.72.0-gompi-2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSTUDIO", root)
setenv("EBVERSIONRSTUDIO", "1.3.1093")
setenv("EBDEVELRSTUDIO", pathJoin(root, "logs/rstudio-1.3.1093-foss-2019b-Java-11-R-4.0.2-easybuild-devel"))

-- Built with EasyBuild version 4.3.0
