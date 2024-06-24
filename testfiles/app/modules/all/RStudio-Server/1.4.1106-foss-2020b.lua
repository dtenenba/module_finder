help([==[

Description
===========
This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.


More information
================
 - Homepage: https://www.rstudio.com/
]==])

whatis([==[Description: This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.
]==])
whatis([==[Homepage: https://www.rstudio.com/]==])
whatis([==[URL: https://www.rstudio.com/]==])

local root = "/app/software/RStudio-Server/1.4.1106-foss-2020b"

conflict("RStudio-Server")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("R/4.0.4-foss-2020b") ) then
    load("R/4.0.4-foss-2020b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("nodejs/12.19.0-GCCcore-10.2.0") ) then
    load("nodejs/12.19.0-GCCcore-10.2.0")
end

if not ( isloaded("SOCI/4.0.1-GCC-10.2.0") ) then
    load("SOCI/4.0.1-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSTUDIOMINSERVER", root)
setenv("EBVERSIONRSTUDIOMINSERVER", "1.4.1106")
setenv("EBDEVELRSTUDIOMINSERVER", pathJoin(root, "logs/RStudio-Server-1.4.1106-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
