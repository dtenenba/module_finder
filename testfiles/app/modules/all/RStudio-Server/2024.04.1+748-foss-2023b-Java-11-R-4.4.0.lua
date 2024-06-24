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

local root = "/app/software/RStudio-Server/2024.04.1+748-foss-2023b-Java-11-R-4.4.0"

conflict("RStudio-Server")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Boost/1.83.0-GCC-13.2.0") ) then
    load("Boost/1.83.0-GCC-13.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("R/4.4.0-gfbf-2023b") ) then
    load("R/4.4.0-gfbf-2023b")
end

if not ( isloaded("SOCI/4.0.3-GCC-13.2.0-Boost-1.83.0") ) then
    load("SOCI/4.0.3-GCC-13.2.0-Boost-1.83.0")
end

if not ( isloaded("yaml-cpp/0.8.0-GCCcore-13.2.0") ) then
    load("yaml-cpp/0.8.0-GCCcore-13.2.0")
end

-- Additional paths for Seurat
if not ( isloaded("HDF5/1.14.3-gompi-2023b") ) then
    load("HDF5/1.14.3-gompi-2023b")
end

if not ( isloaded("NLopt/2.7.1-GCCcore-13.2.0") ) then
    load("NLopt/2.7.1-GCCcore-13.2.0")
end

if not ( isloaded("GSL/2.7-GCC-13.2.0") ) then
    load("GSL/2.7-GCC-13.2.0")
end

if not ( isloaded("JAGS/4.3.2-foss-2023b") ) then
    load("JAGS/4.3.2-foss-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSTUDIOMINSERVER", root)
setenv("EBVERSIONRSTUDIOMINSERVER", "2024.04.1+748")

-- Built with EasyBuild version 4.9.1
