help([==[

Description
===========
unixODBC provides a uniform interface between
application and database driver


More information
================
 - Homepage: https://www.unixodbc.org
]==])

whatis([==[Description: unixODBC provides a uniform interface between
application and database driver]==])
whatis([==[Homepage: https://www.unixodbc.org]==])
whatis([==[URL: https://www.unixodbc.org]==])

local root = "/app/software/unixODBC/2.3.7-foss-2019b"

conflict("unixODBC")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTUNIXODBC", root)
setenv("EBVERSIONUNIXODBC", "2.3.7")
setenv("EBDEVELUNIXODBC", pathJoin(root, "logs/unixODBC-2.3.7-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
