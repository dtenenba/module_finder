help([==[

Description
===========
HTTP proxy for node.js including a REST API for updating the routing table.
 Developed as a part of the Jupyter Hub multi-user server.


More information
================
 - Homepage: https://github.com/jupyterhub/configurable-http-proxy
]==])

whatis([==[Description: HTTP proxy for node.js including a REST API for updating the routing table.
 Developed as a part of the Jupyter Hub multi-user server.]==])
whatis([==[Homepage: https://github.com/jupyterhub/configurable-http-proxy]==])
whatis([==[URL: https://github.com/jupyterhub/configurable-http-proxy]==])

local root = "/app/software/configurable-http-proxy/4.5.5-GCCcore-12.2.0"

conflict("configurable-http-proxy")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("nodejs/18.12.1-GCCcore-12.2.0") ) then
    load("nodejs/18.12.1-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCONFIGURABLEMINHTTPMINPROXY", root)
setenv("EBVERSIONCONFIGURABLEMINHTTPMINPROXY", "4.5.5")
setenv("EBDEVELCONFIGURABLEMINHTTPMINPROXY", pathJoin(root, "logs/configurable-http-proxy-4.5.5-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.0
