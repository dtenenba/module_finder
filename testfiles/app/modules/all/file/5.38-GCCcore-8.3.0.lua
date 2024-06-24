help([==[

Description
===========
The file command is 'a file type guesser', that is, a command-line tool
 that tells you in words what kind of data a file contains.


More information
================
 - Homepage: https://www.darwinsys.com/file/
]==])

whatis([==[Description: The file command is 'a file type guesser', that is, a command-line tool
 that tells you in words what kind of data a file contains.]==])
whatis([==[Homepage: https://www.darwinsys.com/file/]==])
whatis([==[URL: https://www.darwinsys.com/file/]==])

local root = "/app/software/file/5.38-GCCcore-8.3.0"

conflict("file")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFILE", root)
setenv("EBVERSIONFILE", "5.38")
setenv("EBDEVELFILE", pathJoin(root, "logs/file-5.38-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
