help([==[

Description
===========
FileZilla Client is a fast and reliable cross-platform FTP, FTPS and SFTP client with lots of useful features and an intuitive graphical user interface.


More information
================
 - Homepage: https://filezilla-project.org
]==])

whatis([==[Description: FileZilla Client is a fast and reliable cross-platform FTP, FTPS and SFTP client with lots of useful features and an intuitive graphical user interface.]==])
whatis([==[Homepage: https://filezilla-project.org]==])
whatis([==[URL: https://filezilla-project.org]==])

local root = "/app/software/filezilla/3.62.2-GCC-11.2.0"

conflict("filezilla")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("libfilezilla/0.40.0-GCC-11.2.0") ) then
    load("libfilezilla/0.40.0-GCC-11.2.0")
end

if not ( isloaded("wxWidgets/3.0.5.1-GCC-11.2.0") ) then
    load("wxWidgets/3.0.5.1-GCC-11.2.0")
end

if not ( isloaded("nettle/3.7.3-GCCcore-11.2.0") ) then
    load("nettle/3.7.3-GCCcore-11.2.0")
end

if not ( isloaded("DBus/1.13.18-GCCcore-11.2.0") ) then
    load("DBus/1.13.18-GCCcore-11.2.0")
end

if not ( isloaded("SQLite/3.36-GCCcore-11.2.0") ) then
    load("SQLite/3.36-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFILEZILLA", root)
setenv("EBVERSIONFILEZILLA", "3.62.2")
setenv("EBDEVELFILEZILLA", pathJoin(root, "logs/filezilla-3.62.2-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
