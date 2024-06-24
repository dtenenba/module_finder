help([==[

Description
===========
MMseqs2: ultra fast and sensitive search and clustering suite


More information
================
 - Homepage: https://mmseqs.com
]==])

whatis([==[Description: MMseqs2: ultra fast and sensitive search and clustering suite]==])
whatis([==[Homepage: https://mmseqs.com]==])
whatis([==[URL: https://mmseqs.com]==])

local root = "/app/software/MMseqs2/13-45111-gompi-2021b"

conflict("MMseqs2")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMMSEQS2", root)
setenv("EBVERSIONMMSEQS2", "13-45111")
setenv("EBDEVELMMSEQS2", pathJoin(root, "logs/MMseqs2-13-45111-gompi-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
