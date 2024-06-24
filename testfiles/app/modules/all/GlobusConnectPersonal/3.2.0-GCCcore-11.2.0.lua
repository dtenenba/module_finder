help([==[

Description
===========
Globus Connect Personal turns your laptop or other personal computer into a 
Globus endpoint with a just a few clicks. With Globus Connect Personal you can 
share and transfer files to/from a local machine—campus server, desktop computer
or laptop—even if it's behind a firewall and you don't have administrator 
privileges.


More information
================
 - Homepage: https://www.globus.org/globus-connect-personal
]==])

whatis([==[Description: 
Globus Connect Personal turns your laptop or other personal computer into a 
Globus endpoint with a just a few clicks. With Globus Connect Personal you can 
share and transfer files to/from a local machine—campus server, desktop computer
or laptop—even if it's behind a firewall and you don't have administrator 
privileges.
]==])
whatis([==[Homepage: https://www.globus.org/globus-connect-personal]==])
whatis([==[URL: https://www.globus.org/globus-connect-personal]==])

local root = "/app/software/GlobusConnectPersonal/3.2.0-GCCcore-11.2.0"

conflict("GlobusConnectPersonal")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Tcl/8.6.11-GCCcore-11.2.0") ) then
    load("Tcl/8.6.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGLOBUSCONNECTPERSONAL", root)
setenv("EBVERSIONGLOBUSCONNECTPERSONAL", "3.2.0")
setenv("EBDEVELGLOBUSCONNECTPERSONAL", pathJoin(root, "logs/GlobusConnectPersonal-3.2.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.6.1
