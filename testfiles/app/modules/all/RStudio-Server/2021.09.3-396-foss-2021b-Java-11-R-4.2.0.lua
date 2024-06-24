help([==[

Description
===========
This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.

The server can be started with:
  rserver --server-daemonize=0 --www-port 8787 --rsession-which-r=$(which R)


More information
================
 - Homepage: https://www.rstudio.com/
]==])

whatis([==[Description: This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.

The server can be started with:
  rserver --server-daemonize=0 --www-port 8787 --rsession-which-r=$(which R)
]==])
whatis([==[Homepage: https://www.rstudio.com/]==])
whatis([==[URL: https://www.rstudio.com/]==])

local root = "/app/software/RStudio-Server/2021.09.3-396-foss-2021b-Java-11-R-4.2.0"

conflict("RStudio-Server")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Boost/1.77.0-GCC-11.2.0") ) then
    load("Boost/1.77.0-GCC-11.2.0")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("SOCI/4.0.3-GCC-11.2.0") ) then
    load("SOCI/4.0.3-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSTUDIOMINSERVER", root)
setenv("EBVERSIONRSTUDIOMINSERVER", "1.4.1717")
setenv("EBDEVELRSTUDIOMINSERVER", pathJoin(root, "logs/RStudio-Server-2021.09.3-396-foss-2021b-Java-11-R-4.2.0-easybuild-devel"))

-- Built by hand 
