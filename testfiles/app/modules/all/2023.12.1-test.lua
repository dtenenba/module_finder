help([==[

Description
===========
This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.

The server can be started with:
  rserver --server-daemonize=0 --www-port=8787

If you need a database config one can be created with:
  MYTMP=`mktemp -d` && echo -e "provider=sqlite\ndirectory=${MYTMP}/sqlite" > "${MYTMP}/db.conf"
and then used with:
  rserver ... --database-config-file="${MYTMP}/db.conf"


More information
================
 - Homepage: https://www.rstudio.com/
]==])

whatis([==[Description: This is the RStudio Server version.
RStudio is a set of integrated tools designed to help you be more productive with R.

The server can be started with:
  rserver --server-daemonize=0 --www-port=8787

If you need a database config one can be created with:
  MYTMP=`mktemp -d` && echo -e "provider=sqlite\ndirectory=${MYTMP}/sqlite" > "${MYTMP}/db.conf"
and then used with:
  rserver ... --database-config-file="${MYTMP}/db.conf"
]==])
whatis([==[Homepage: https://www.rstudio.com/]==])
whatis([==[URL: https://www.rstudio.com/]==])

local root = "/app/software/RStudio-Server/2023.12.1+402-foss-2022b-Java-11-R-4.3.1"

conflict("RStudio-Server")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Boost/1.83.0-GCC-12.2.0") ) then
    load("Boost/1.83.0-GCC-12.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("R/4.3.1-gfbf-2022b") ) then
    load("R/4.3.1-gfbf-2022b")
end

if not ( isloaded("SOCI/4.0.3-GCC-12.2.0-Boost-1.83.0") ) then
    load("SOCI/4.0.3-GCC-12.2.0-Boost-1.83.0")
end

if not ( isloaded("yaml-cpp/0.7.0-GCCcore-12.2.0") ) then
    load("yaml-cpp/0.7.0-GCCcore-12.2.0")
end

if not ( isloaded("HDF5/1.14.0-gompi-2022b") ) then
    load("HDF5/1.14.0-gompi-2022b")
end

if not ( isloaded("NLopt/2.7.1-GCCcore-12.2.0") ) then
    load("NLopt/2.7.1-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSTUDIOMINSERVER", root)
setenv("EBVERSIONRSTUDIOMINSERVER", "2023.12.1+402")
setenv("EBDEVELRSTUDIOMINSERVER", pathJoin(root, "logs/RStudio-Server-2023.12.1+402-foss-2022b-Java-11-R-4.3.1-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
