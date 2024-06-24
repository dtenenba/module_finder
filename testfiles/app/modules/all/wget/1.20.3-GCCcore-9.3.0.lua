help([==[

Description
===========
GNU Wget is a free software package for retrieving files using HTTP, HTTPS and FTP,
 the most widely-used Internet protocols. It is a non-interactive commandline tool,
 so it may easily be called from scripts, cron jobs, terminals without X-Windows support, etc.


More information
================
 - Homepage: https://www.gnu.org/software/wget
]==])

whatis([==[Description: GNU Wget is a free software package for retrieving files using HTTP, HTTPS and FTP,
 the most widely-used Internet protocols. It is a non-interactive commandline tool,
 so it may easily be called from scripts, cron jobs, terminals without X-Windows support, etc.]==])
whatis([==[Homepage: https://www.gnu.org/software/wget]==])
whatis([==[URL: https://www.gnu.org/software/wget]==])

local root = "/app/software/wget/1.20.3-GCCcore-9.3.0"

conflict("wget")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("PCRE/8.44-GCCcore-9.3.0") ) then
    load("PCRE/8.44-GCCcore-9.3.0")
end

if not ( isloaded("libidn/1.35-GCCcore-9.3.0") ) then
    load("libidn/1.35-GCCcore-9.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-9.3.0") ) then
    load("zlib/1.2.11-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTWGET", root)
setenv("EBVERSIONWGET", "1.20.3")
setenv("EBDEVELWGET", pathJoin(root, "logs/wget-1.20.3-GCCcore-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
